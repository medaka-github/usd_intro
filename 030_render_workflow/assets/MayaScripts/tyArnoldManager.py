""" tyArnoldManager
 
* MtoA Render Manager

Info:
    * Created : 2024-09-03 Tatsuya YAMAGISHI
    * Coding : Python 3.11.9 & PySide6
    * Author : CG Sup. Tatsuya Yamagishi
 
Release Note:
    * v0.0.1 2024-09-03 Tatsuya Yamagishi
        * Added
        * Changed
        * Updated
        * Fixed
"""
global logger

VERSION = 'v0.0.1'
NAME = 'tyArnoldManager'


#=======================================#
# Import
#=======================================#
from pprint import pprint


try:
    from PySide6 import QtCore, QtGui, QtWidgets
except:
    from PySide2 import QtCore, QtGui, QtWidgets

try:
    from shiboken2 import wrapInstance
except:
    from shiboken6 import wrapInstance


import maya.cmds as cmds
import maya.mel as mel
from maya import OpenMayaUI as omui 

from maya.app.renderSetup.model import selector
from maya.app.renderSetup.model import renderLayer
from maya.app.renderSetup.model import renderSetup
import maya.app.renderSetup.views.renderSetupPreferences as prefs
from maya.app.renderSetup.model import typeIDs


import mtoa.aovs as aovs
import arnold


#=======================================#
# Settings
#=======================================#
GUI_BOLD_FONT = QtGui.QFont()
GUI_BOLD_FONT.setFamily('BankGothic Md BT')
GUI_BOLD_FONT.setPointSize(15)

GUI_DEFAULT_FONT = QtGui.QFont()
GUI_DEFAULT_FONT.setFamily('Courier New')
GUI_DEFAULT_FONT.setPointSize(9)

GUI_LARGE_FONT = QtGui.QFont()
GUI_LARGE_FONT.setFamily('Arial Black')
GUI_LARGE_FONT.setPointSize(11)


RENDER_GRP_CAM = '__CAM__'
RENDER_GRP_LIGHT = '__LGT__'
RENDER_GRP_GEO = '__GEO__'
RENDER_GRP_SHADOW = '__SHADOW__'
RENDER_GRP_GUIDE = '__GUIDE__'
RENDER_GRP_WORKS = '__works__'

RENDER_GROUPS = [
    RENDER_GRP_CAM, 
    RENDER_GRP_LIGHT,
    RENDER_GRP_GEO,
    RENDER_GRP_SHADOW,
    RENDER_GRP_GUIDE,
    RENDER_GRP_WORKS,
]

RENDER_GEOMETRY = {
    'Geo': RENDER_GRP_GEO,
}

RENDER_COLOR_AOVS = [
    'aiAOV_coat',
    'aiAOV_coat_albedo',
    'aiAOV_diffuse',
    'aiAOV_diffuse_albedo',
    'aiAOV_diffuse_direct',
    'aiAOV_diffuse_indirect',
    'aiAOV_emission',
    'aiAOV_RGBA',
    'aiAOV_shadow_matte',
    'aiAOV_sheen',
    'aiAOV_sheen_albedo',
    'aiAOV_specular',
    'aiAOV_specular_albedo',
    'aiAOV_sss',
    'aiAOV_sss_albedo',
    'aiAOV_transmission',
    'aiAOV_transmission_albedo',
    'aiAOV_volume',
    'aiAOV_volume_albedo',
    'aiAOV_volume_opacity',
]


RENDER_DATA_AOVS = [
    'aiAOV_ao',
    'aiAOV_crypto_material',
    'aiAOV_crypto_object',
    'aiAOV_motionvector',
    'aiAOV_N',
    'aiAOV_normalize_z',
    'aiAOV_P',
    'aiAOV_Pref',
    'aiAOV_UVW',
    'aiAOV_volume_Z',
    'aiAOV_opacity',
    'aiAOV_deep',
]

RENDER_DEEP_AOVS = [
    # 'aiAOV_deep',
]

RENDER_RGB_AOVS = [
    'aiAOV_RGBA',
]

RENDER_SHADOW_AOVS = [
    'aiAOV_shadow_matte',
    'aiAOV_specular_direct'
]


RENDER_LAYERS = ['color', 'utility', 'shadow']
SETUP_NODE_NAME = 'mtoa_setup'

SHADOW_MATTE_NAME = 'mtoa_shadowmatte'
ARNOLD_SHADOW_MAT = f'{SHADOW_MATTE_NAME}_ARN'
ARNOLD_SHADOW_SG = f'{SHADOW_MATTE_NAME}_SG'


WINDOW_SIZE = (300, 600)


#=======================================#
# Functions
#=======================================#
def add_collect_aovs_all_off(layer):
    """ AOV全オフ """
    collector = layer.createCollection('aovs_all_off')
    collector.setLabelColor('Red')

    collector_selector = collector.getSelector()
    collector_selector.setFilterType(selector.Filters.kCustom)
    collector_selector.setCustomFilterValue('aiAOV')
    collector_selector.setPattern('aiAOV_*')

    override = collector.createAbsoluteOverride('aiAOV_RGBA', 'enabled')
    override.setAttrValue(False)

    return collector


def add_collect_aovs_color_on(layer):
    collector = layer.createCollection('aovs_color_on')
    collector.setLabelColor('Blue')

    collector_selector = collector.getSelector()
    collector_selector.setFilterType(selector.Filters.kCustom)
    collector_selector.setCustomFilterValue('aiAOV')
    collector_selector.staticSelection.add(RENDER_COLOR_AOVS)

    override = collector.createAbsoluteOverride('aiAOV_RGBA', 'enabled')
    override.setAttrValue(True)

    return collector


def add_collect_aovs_data_on(layer):
    collector = layer.createCollection('aovs_data_on')
    collector.setLabelColor('Blue')
    
    collector_selector = collector.getSelector()
    collector_selector.setFilterType(selector.Filters.kCustom)
    collector_selector.setCustomFilterValue('aiAOV')
    collector_selector.staticSelection.add(RENDER_DATA_AOVS)

    override = collector.createAbsoluteOverride('aiAOV_RGBA', 'enabled')
    override.setAttrValue(True)

    return collector


def add_collect_geometry(layer):
    _layer_name = layer.name()

    for _element_name, _group_name in RENDER_GEOMETRY.items():
        """
        
        Attribute:
            element_name(str): Geo
            _group_name(str): __GEO__
        
        """
        print(_element_name)
        _collector = layer.createCollection(_element_name)
        _node = cmds.ls(_group_name)

        print(f'TY | {_node}')

        if _node:
            _collector_selector = _collector.getSelector()
            _result = '|{}'.format(_group_name)
            _collector_selector.staticSelection.add([_result])

            _collector_shape = _collector.createCollection('Geo_Shape')
            _selector_shape = _collector_shape.getSelector()
            _selector_shape.setPattern('*')
            _selector_shape.setFilterType(selector.Filters.kShapes)
                
            _override = _collector_shape.createAbsoluteOverride(f'{SETUP_NODE_NAME}Shape', 'primaryVisibility')

            if 'matte' in _layer_name:
                _override.setAttrValue(False)
            else:
                _override.setAttrValue(True)


            _children = cmds.listRelatives(_node, fullPath=True) or []
            if not _children:
                _collector.setSelfEnabled(False)


def add_collect_matte(layer):
    print('Add Collect Matte')
    _layer_name = layer.name()

    _collector = layer.createCollection(_layer_name)
    _node = cmds.ls(RENDER_GRP_SHADOW)

    print(f'TY | {_node}')
    if _node:
        _collector_selector = _collector.getSelector()
        result = '|{}'.format(RENDER_GRP_SHADOW)
        _collector_selector.staticSelection.add([result])


        collector_shape = _collector.createCollection(_layer_name+'_Shape')
        selector_shape = collector_shape.getSelector()
        selector_shape.setPattern('*')
        selector_shape.setFilterType(selector.Filters.kShapes)
        override2 = collector_shape.createAbsoluteOverride(f'{SETUP_NODE_NAME}Shape', 'castsShadows')
        override2.setAttrValue(False)
        override3 = collector_shape.createAbsoluteOverride(f'{SETUP_NODE_NAME}Shape', 'aiSelfShadows')
        override3.setAttrValue(False)

        
        get_shadow_matte_material()
        override = collector_shape.createOverride('Shadowmat', typeIDs.materialOverride)
        override.setMaterial(ARNOLD_SHADOW_SG)


        _children = cmds.listRelatives(_node, fullPath=True) or []

        if not _children:
            _collector.setSelfEnabled(False)



def add_collect_light_all_off(layer):
    """ ライト全オフレイヤー作成 """
    collector = layer.createCollection('light_all_off')    
    collector_selector = collector.getSelector()
    collector_selector.setFilterType(selector.Filters.kLights)
    collector_selector.setPattern('*')
    collector.setSelfEnabled(False)

    return collector


def add_collect_light_all_on(layer):
    collector = layer.createCollection('light_all_on')
    collector.setLabelColor('Yellow')
    
    collector_selector = collector.getSelector()
    collector_selector.setFilterType(selector.Filters.kTransforms)
    # collector_selector.setPattern('*')

    ligt_grp = '|{}'.format(RENDER_GRP_LIGHT)
    collector_selector.staticSelection.add([ligt_grp])

    return collector



def clear_render_setup():
    """ レンダーセットアップ消去 """
    _rs = renderSetup.instance()
    _layers = _rs.getRenderLayers()

    [renderLayer.delete(_layer) for _layer in _layers]


def create_render_groups():
    """ レンダー用グループ作成 """
    for _name in list(RENDER_GROUPS):
        if cmds.objExists(_name):
            print(f'TY | "{_name}" is alrady exists.')
        
        else:
            print(f'TY | Create >> "{_name}"')

            cmds.createNode('transform', n=_name)
            lock_transform(_name)


def create_render_layer(layer_name: str):
    print(f'TY | Create render layer = {layer_name}')

    _rs = renderSetup.instance()
    _layer = _rs.createRenderLayer(layer_name)

    return _layer





def create_render_setups():
    """ 
    
    レンダリング用レンダーセットアップ作成
    """
    print('TY | > Create Render layer')

    if not cmds.objExists(SETUP_NODE_NAME): 
        _setup_node = cmds.polyCube()
        # _setup_node[0].rename(_setup_node_name)
        cmds.rename(_setup_node[0], SETUP_NODE_NAME)


    for _layer_name in RENDER_LAYERS:
        _layer = create_render_layer(_layer_name)

        _collector = add_collect_light_all_off(_layer)

        _collector = add_collect_light_all_on(_layer)
        if _layer_name in ('deep', 'utility'):
            _collector.setSelfEnabled(False)

        _collector = add_collect_aovs_all_off(_layer)


        if _layer_name in ('color', 'shadow'):
            _collector = add_collect_aovs_color_on(_layer)
        else:
            _collector = add_collect_aovs_data_on(_layer)

        add_collect_geometry(_layer)


        if 'shadow' in _layer_name:
            add_collect_matte(_layer)


    cmds.delete(SETUP_NODE_NAME)

    print('TY | Create Render layer completed.')

   




def get_main_window():
    """ メインウィンドウを取得 """
    ptr = omui.MQtUtil.mainWindow()

    if ptr is not None:
        return wrapInstance(int(ptr), QtWidgets.QWidget)
    

def get_render_layer(layer_name: str):
    _rs = renderSetup.instance()
    return _rs.getRenderLayer(layer_name)



def get_shadow_matte_material():
    """ get shadow matte"""
    print('TY | Get Shadow Matte')
    if not cmds.objExists(ARNOLD_SHADOW_MAT):       
        cmds.shadingNode('aiShadowMatte', asShader=1, n=ARNOLD_SHADOW_MAT)

    if not cmds.objExists(ARNOLD_SHADOW_SG):
        cmds.sets(renderable=1, noSurfaceShader=1, empty=1, name=ARNOLD_SHADOW_SG)



def lock_transform(node: str):
    """ トランスフォームをロック """
    _attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz']
        
    [cmds.setAttr(f'{node}.{_attr}', lock=True) for _attr in _attrs]


def masterlayer_disable():
    _rs = renderSetup.instance()
    _rs._defaultRenderLayer.setRenderable(False)


def select_default_render_setup():
    _rs = renderSetup.instance()
    _rs.switchToLayer(_rs.getDefaultRenderLayer())


#=======================================#
# Class
#=======================================#
class TyMtoA:
    """ MtoA Manager 
    
    * MtoA 設定用クラス
    
    """
    def __init__(self) -> None:
        self._aov = aovs.AOVInterface()
        self._aov_types = {
            "int" : arnold.ai_params.AI_TYPE_INT,
            "uint" : arnold.ai_params.AI_TYPE_UINT,
            "bool" : arnold.ai_params.AI_TYPE_BOOLEAN,
            "float" : arnold.ai_params.AI_TYPE_FLOAT,
            "rgb" : arnold.ai_params.AI_TYPE_RGB,
            "rgba" : arnold.ai_params.AI_TYPE_RGBA,
            "vector" : arnold.ai_params.AI_TYPE_VECTOR,
            "vector2" : arnold.ai_params.AI_TYPE_VECTOR2,
            "pointer" : arnold.ai_params.AI_TYPE_POINTER
        }


    def _add_aov(self, aov_name, aov_type, light_grp, filter, data=False, deep=False):
        #------------------------#
        # Create Aov Node
        #------------------------#
        aovNode = cmds.createNode('aiAOV', name='aiAOV_' + aov_name, skipSelect=True)
        print('TYP | aov_name = {}'.format(aov_name))

        cmds.setAttr( aovNode+'.enabled', 0)
                
        out = '{}.outputs[0]'.format(aovNode)

        driver = 'defaultArnoldDriver'
        if data:
            driver = self.get_data_driver('data')
        elif deep:
            driver = self.get_deep_driver('deep')

        # cmds.connectAttr('defaultArnoldDriver.message', '{}.driver'.format(out))
        cmds.connectAttr('{}.message'.format(driver), '{}.driver'.format(out))
        
        
        #------------------------#
        # Create Filter
        #------------------------#
        if aov_name == 'RGBA':
            node = cmds.ls('defaultArnoldFilter')[0]
        else:
            node = cmds.createNode('aiAOVFilter', skipSelect=True)
            cmds.setAttr('{}.aiTranslator'.format(node), filter, type="string")
        
        filterAttr = '{}.message'.format(node)
        
        import mtoa.hooks as hooks
        hooks.setupFilter(filter, aov_name)
        
        cmds.connectAttr(filterAttr, '{}.filter'.format(out))
        cmds.setAttr('{}.name'.format(aovNode), aov_name, type="string")
        cmds.setAttr('{}.type'.format(aovNode), self._aov_types[aov_type])
        
        #------------------------#
        # Light Grp
        #------------------------#
        if light_grp:
            cmds.setAttr('{}.lightGroups'.format(aovNode), light_grp)
        
        #nextPlug = 'defaultArnoldRenderOptions.aovList[0]'
        nextPlug = self._aov.nextAvailableAttr()
        cmds.connectAttr('{}.message'.format(aovNode), nextPlug)
        
        return aovNode
    

    def _add_aov_deep(self, aovName, aov_type, light_grp, filter):
        # Create Aov Node
        print('deep = {}'.format(aovName))
        aovNode = cmds.createNode('aiAOV', name='aiAOV_' + aovName, skipSelect=True)
        cmds.setAttr( aovNode+'.enabled', 0)
        out = '{}.outputs[0]'.format(aovNode)
        

        deepDriver = self.get_deep_driver(aovName)
        
        cmds.setAttr('{}.mergeAOVs'.format(deepDriver), True)
        cmds.setAttr('{}.aiTranslator'.format(deepDriver), 'deepexr', type='string')
        cmds.setAttr('{}.alphaTolerance'.format(deepDriver), 0.2)
        cmds.setAttr('{}.depthTolerance'.format(deepDriver), 0.2)
        

        path = cmds.getAttr('defaultRenderGlobals.imageFilePrefix')
        if path:
            path += '_deep'
        cmds.setAttr('{}.prefix'.format(deepDriver), str(path), type='string')
        

        attrs = cmds.listAttr(deepDriver)
        attrs.sort()
        for attr in attrs:
            print(attr)

            cmd = '{}.{}'.format(deepDriver, attr)
            try:
                print(cmds.getAttr(cmd))
            except:
                pass

        # Connect Driver
        cmds.connectAttr('{}.message'.format(deepDriver), '{}.driver'.format(out))
        
        # Create Filter
        node = cmds.createNode('aiAOVFilter', skipSelect=True)
        cmds.setAttr('{}.aiTranslator'.format(node), filter, type="string")
        filterAttr = '{}.message'.format(node)
        import mtoa.hooks as hooks
        hooks.setupFilter(filter, aovName)
        
        cmds.connectAttr(filterAttr, '{}.filter'.format(out))
        cmds.setAttr('{}.name'.format(aovNode), aovName, type="string")
        cmds.setAttr('{}.type'.format(aovNode), self._aov_types[aov_type])
        
        if light_grp:
            cmds.setAttr('{}.lightGroups'.format(aovNode), light_grp)
        
        #nextPlug = 'defaultArnoldRenderOptions.aovList[0]'
        nextPlug = self._aov.nextAvailableAttr()
        cmds.connectAttr('{}.message'.format(aovNode), nextPlug)
        
        return aovNode


    def add_aov_coat(self, light_grp=False):
        aov_name = 'coat'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        return node


    def add_aov_coat_albedo(self, light_grp=False):
        aov_name = 'coat_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        return node


    def add_aov_coat_direct(self, light_grp=False):
        aov_name = 'coat_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        return node


    def add_aov_coat_indirect(self, light_grp=False):
        aov_name = 'coat_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        return node
    

    def add_aov_cpu_time(self):
        aov_name = 'cputime'
        aov_type = 'float'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node
    

    def add_aov_crypto_obj(self):
        aov_name = 'crypto_object'
        aov_type = 'rgb'
        filter = 'gaussian'
        # node = self._add_aov(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)

        aovNode = cmds.createNode('cryptomatte', skipSelect=True)
        out = '{}.outColor'.format(aovNode)
        cmds.connectAttr(out, '{}.defaultValue'.format(node))

        return node


    def add_aov_crypto_mat(self):
        aov_name = 'crypto_material'
        aov_type = 'rgb'
        filter = 'gaussian'
        # node = self._add_aov(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)

        aovNode = cmds.createNode('cryptomatte', skipSelect=True)
        out = '{}.outColor'.format(aovNode)
        cmds.connectAttr(out, '{}.defaultValue'.format(node))

        return node


    def add_aov_depth(self):
        aov_name = 'normalize_z'
        aov_type = 'rgba'
        filter = 'gaussian'
        # node = self.addNode(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)
        
        #-------------------------------
        # Position
        #-------------------------------
        samp_node = cmds.createNode('aiStateVector', skipSelect=True)
        wtm_node = cmds.createNode('aiSpaceTransform', skipSelect=True)
        color_node = cmds.createNode('aiFloatToRgba', skipSelect=True)
        
        # connectSamplerinfor
        cmds.setAttr(samp_node+'.variable', 3) #P      
        cmds.connectAttr(samp_node+'.outValue', wtm_node+'.input')
               
        # wtmNode
        cmds.setAttr(wtm_node+'.scale', 0.01)
        cmds.connectAttr(wtm_node+'.outValueX' , color_node+'.r')
        cmds.connectAttr(wtm_node+'.outValueY' , color_node+'.g')
        cmds.connectAttr(wtm_node+'.outValueZ' , color_node+'.b')
        
        # colornode
        cmds.connectAttr(color_node+'.outColor', node +'.defaultValue')
        
        #-------------------------------
        # Depth
        #-------------------------------
        rl_node = cmds.createNode('aiStateFloat', skipSelect=True)
        cmds.setAttr(rl_node+'.variable', 5) #Rl
        
        m_node = cmds.createNode('aiMultiply', skipSelect=True)
        cmds.setAttr(m_node+'.input2', 0.01, 0.01, 0.01, type="double3")
        
        cmds.connectAttr(rl_node+'.outValue', m_node +'.input1R')
        cmds.connectAttr(m_node+'.outColorR', color_node +'.a')
        
        return node
    

    def add_aov_ao(self):
        aov_name = 'ao'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter)

        aoNode = cmds.createNode('aiAmbientOcclusion', skipSelect=True)
        # print('{}.outColor   {}.defaultValue'.format(aoNode,  node))
        out = '{}.outColor'.format(aoNode)
        cmds.connectAttr(out, '{}.defaultValue'.format(node))
 
        return node
    

    def add_aov_deep(self):
        aov_name = 'deep'
        aov_type = 'rgba'
        filter = 'gaussian'
        node = self._add_aov_deep(aov_name, aov_type, False, filter)   

        return node
    

    def add_aov_diffuse(self, light_grp=False):
        aov_name = 'diffuse'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_diffuse_albedo(self, light_grp=False):
        aov_name = 'diffuse_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_diffuse_direct(self, light_grp=False):
        aov_name = 'diffuse_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_diffuse_indirect(self, light_grp=False):
        aov_name = 'diffuse_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
    
        return node
    

    def add_aov_emission(self, light_grp=False):
        aov_name = 'emission'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_id(self):
        aov_name = 'ID'
        aov_type = 'vector'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter, deep=True)

        cmds.setAttr(node+'.type', 2) # unit
        
        return node
    

    def add_aov_motionvector(self):
        aov_name = 'motionvector'
        aov_type = 'rgb'
        filter = 'gaussian'
        # node = self.addNode(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node
    

    def add_aov_n(self):
        aov_name = 'N'
        aov_type = 'vector'
        filter = 'gaussian'
        # node = self.addNode(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node
    

    def add_aov_p(self):
        aov_name = 'P'
        aov_type = 'vector'
        filter = 'gaussian'
        # node = self.addNode(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)
    
        return node
    

    def add_aov_pref(self):
        aov_name = 'Pref'
        aov_type = 'rgb'
        filter = 'gaussian'
        # node = self.addNode(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node
    

    def add_aov_object_id(self):
        aov_name = 'objectid'
        aov_type = 'rgba'
        filter = 'gaussian'

        node = self._add_aov(aov_name, aov_type, False, filter, deep=True)
        
        #-------------------------------
        # User
        #-------------------------------
        user_node = cmds.createNode('aiUserDataColor', skipSelect=True)
        cmds.setAttr(user_node+'.attribute', 'objid', type='string')
        cmds.connectAttr(user_node+'.outColor', node +'.defaultValue')
        
        return node
    

    def add_aov_opacity(self):
        aov_name = 'opacity'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter)
        
        return node
    

    def add_aov_rgba(self, light_grp):
        aov_name = 'RGBA'
        aov_type = 'rgba'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    
    def add_aov_shadow_matte(self, light_grp=False):
        aov_name = 'shadow_matte'
        aov_type = 'rgba'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        cmds.setAttr(node +'.enabled', 0)

        return node
    
    
    def add_aov_sheen(self, light_grp=False):
        aov_name = 'sheen'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_sheen_albedo(self, light_grp=False):
        aov_name = 'sheen_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_sheen_direct(self, light_grp=False):
        aov_name = 'sheen_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_sheen_indirect(self, light_grp=False):
        aov_name = 'sheen_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_specular(self, light_grp=False):
        aov_name = 'specular'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_specular_albedo(self, light_grp=False):
        aov_name = 'specular_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_specular_direct(self, light_grp=False):
        aov_name = 'specular_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_specular_indirect(self, light_grp=False):
        aov_name = 'specular_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        
        return node
    

    def add_aov_sss(self, light_grp=False):
        aov_name = 'sss'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_sss_albedo(self, light_grp=False):
        aov_name = 'sss_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_sss_direct(self, light_grp=False):
        aov_name = 'sss_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)
        return node


    def add_aov_sss_indirect(self, light_grp=False):
        aov_name = 'sss_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_uvw(self):
        aov_name = 'UVW'
        aov_type = 'rgb'
        filter = 'gaussian'
        # node = self.addNode(aov_name, aov_type, False, filter, data=True)
        node = self._add_aov(aov_name, aov_type, False, filter)

        _aov_node = cmds.createNode('aiUtility', skipSelect=True)
        cmds.setAttr(_aov_node+'.colorMode', 5)
        cmds.setAttr(_aov_node+'.shadeMode', 2)
        #print('{}.outColor   {}.defaultValue'.format(_aov_node,  node))
        out = '{}.outColor'.format(_aov_node)
        cmds.connectAttr(out, '{}.defaultValue'.format(node))

        return node
    

    def add_aov_transmission(self, light_grp=False):
        aov_name = 'transmission'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_transmission_albedo(self, light_grp=False):
        aov_name = 'transmission_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_transmission_direct(self, light_grp=False):
        aov_name = 'transmission_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    

    def add_aov_transmission_indirect(self, light_grp=False):
        aov_name = 'transmission_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node
    
    def add_aov_volume(self, light_grp=False):
        aov_name = 'volume'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_volume_z(self):
        aov_name = 'volume_Z'
        aov_type = 'float'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node


    def add_aov_volume_albedo(self, light_grp=False):
        aov_name = 'volume_albedo'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_volume_direct(self, light_grp=False):
        aov_name = 'volume_direct'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_volume_indirect(self, light_grp=False):
        aov_name = 'volume_indirect'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, light_grp, filter)

        return node


    def add_aov_volume_opacity(self):
        aov_name = 'volume_opacity'
        aov_type = 'rgb'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node


    def add_aov_z(self):
        aov_name = 'Z'
        aov_type = 'float'
        filter = 'gaussian'
        node = self._add_aov(aov_name, aov_type, False, filter)

        return node


    def create_aovs(self, light_grp=False):
        ''' create aovs
        for shot lighting scene aovs
        albedo aov does'n need light group
        '''

        self.clear_aovs()
        
        _aov = self.add_aov_rgba(light_grp)
        
        _aov = self.add_aov_diffuse(light_grp)
        _aov = self.add_aov_diffuse_albedo()
        _aov = self.add_aov_diffuse_direct(light_grp)
        _aov = self.add_aov_diffuse_indirect(light_grp)

        _aov = self.add_aov_specular(light_grp)
        _aov = self.add_aov_specular_albedo()
        _aov = self.add_aov_specular_direct(light_grp)
        _aov = self.add_aov_specular_indirect(light_grp)

        _aov = self.add_aov_transmission(light_grp)
        _aov = self.add_aov_transmission_albedo()
        _aov = self.add_aov_transmission_direct(light_grp)
        _aov = self.add_aov_transmission_indirect(light_grp)

        _aov = self.add_aov_sheen(light_grp)
        _aov = self.add_aov_sheen_albedo()
        _aov = self.add_aov_sheen_direct(light_grp)
        _aov = self.add_aov_sheen_indirect(light_grp)
        
        _aov = self.add_aov_sss(light_grp)
        _aov = self.add_aov_sss_albedo()
        _aov = self.add_aov_sss_direct(light_grp)
        _aov = self.add_aov_sss_indirect(light_grp)
        
        _aov = self.add_aov_coat(light_grp)
        _aov = self.add_aov_coat_albedo()
        _aov = self.add_aov_coat_direct(light_grp)
        _aov = self.add_aov_coat_indirect(light_grp)

        _aov = self.add_aov_emission()

        
        _aov = self.add_aov_opacity()

        _aov = self.add_aov_shadow_matte()

        _aov = self.add_aov_volume(light_grp)
        _aov = self.add_aov_volume_z()
        _aov = self.add_aov_volume_opacity()
        _aov = self.add_aov_volume_albedo()
        _aov = self.add_aov_volume_direct(light_grp)
        _aov = self.add_aov_volume_indirect(light_grp)

        _aov = self.add_aov_n()
        _aov = self.add_aov_p()
        _aov = self.add_aov_depth()
        _aov = self.add_aov_pref()
        # _aov = self.add_aov_z()
        _aov = self.add_aov_uvw()
        _aov = self.add_aov_motionvector()
        _aov = self.add_aov_crypto_obj()
        _aov = self.add_aov_crypto_mat()
        _aov = self.add_aov_ao()
        # _aov = self.add_aov_id()
        # _aov = self.add_aov_object_id()
        # _aov = self.add_aov_id1()

        _aov = self.add_aov_deep()


    def clear_aovs(self):
        """ 全AOVを消去 """
        _aov_list = self._aov.getAOVs()
        pprint(_aov_list)

        self._aov.removeAOVs(_aov_list)


    def get_deep_driver(self, aov_name):
        _node = cmds.ls('aiAOVDriver_deep')
        _deep_driver = None

        if len(_node)==0:
            _deep_driver = cmds.createNode('aiAOVDriver', name='aiAOVDriver_' + aov_name, skipSelect=True)
        else:
            _deep_driver = _node[0]

        return _deep_driver


class TyArnoldModel:
    def __init__(self) -> None:
        self._mtoa = TyMtoA()

    
    def clear_aovs(self):
        print('TY | > Clear arnold aovs')
        self._mtoa.clear_aovs()

    
    def create_aovs(self):
        print('TY | > Create arnold aovs')
        self._mtoa.clear_aovs()
        self._mtoa.create_aovs()


    def create_render_groups(self):
        print('TY | > create render groups')
        self.clear_render_setup()
        create_render_groups()


    def create_render_setup(self):
        print('TY | > create render setup')
        clear_render_setup()
        masterlayer_disable()
        create_render_setups()


    def clear_render_setup(self):
        """ RenderSetupを消去 """
        print('TY | > Clear render setup')

        select_default_render_setup()
        clear_render_setup()


#=======================================#
# Gui
#=======================================#
class TyGroupBox(QtWidgets.QGroupBox):
    def __init__(self, text='', parent=None):
        super().__init__(text, parent)

        self._main_layout = QtWidgets.QVBoxLayout(self)


    def add_widget(self, widget: QtWidgets.QWidget):
        self._main_layout.addWidget(widget)



class TyArnoldMainWidget(QtWidgets.QWidget):
    def __init__(self, model, parent=None) -> None:
        super().__init__(parent)

        self._model: TyArnoldModel = model

        self._init_ui()
        self._init_signals()


    def _init_ui(self):
        self._main_layout  = QtWidgets.QVBoxLayout(self)

        self._init_ui_render_nodes()
        self._init_ui_render_aovs()
        self._init_ui_render_setup()

        self._init_ui_font()


    def _init_ui_font(self):
        self._group_aovs.setFont(GUI_BOLD_FONT)
        self._group_render_nodes.setFont(GUI_BOLD_FONT)
        self._group_render_setup.setFont(GUI_BOLD_FONT)

        self._button_clear_aovs.setFont(GUI_DEFAULT_FONT)
        self._button_clear_render_setup.setFont(GUI_DEFAULT_FONT)
        self._button_create_aovs.setFont(GUI_DEFAULT_FONT)
        self._button_create_render_groups.setFont(GUI_DEFAULT_FONT)
        self._button_create_render_setup.setFont(GUI_DEFAULT_FONT)


    def _init_ui_render_aovs(self):
        self._group_aovs = TyGroupBox('Aovs:')
        self.add_widget(self._group_aovs)

        self._button_clear_aovs = QtWidgets.QPushButton('Clear')
        self._button_create_aovs = QtWidgets.QPushButton('Create')


        self._group_aovs.add_widget(self._button_clear_aovs)
        self._group_aovs.add_widget(self._button_create_aovs)

        


    def _init_ui_render_nodes(self):
        self._group_render_nodes = TyGroupBox('Nodes:')
        self.add_widget(self._group_render_nodes)

        self._button_create_render_groups = QtWidgets.QPushButton('Create')

        self._group_render_nodes.add_widget(self._button_create_render_groups)

        


    def _init_ui_render_setup(self):
        self._group_render_setup = TyGroupBox('Render setup:')
        self.add_widget(self._group_render_setup)

        self._button_clear_render_setup = QtWidgets.QPushButton('Clear')
        self._button_create_render_setup = QtWidgets.QPushButton('Create')

        self._group_render_setup.add_widget(self._button_clear_render_setup)
        self._group_render_setup.add_widget(self._button_create_render_setup)

        


    def _init_signals(self):
        self._button_create_aovs.clicked.connect(self._model.create_aovs)
        self._button_create_render_groups.clicked.connect(self._model.create_render_groups)
        self._button_create_render_setup.clicked.connect(self._model.create_render_setup)

        self._button_clear_aovs.clicked.connect(self._model.clear_aovs)
        self._button_clear_render_setup.clicked.connect(self._model.clear_render_setup)
        

    
    def add_widget(self, widget: QtWidgets.QWidget):
        self._main_layout.addWidget(widget)


class TyArnoldView(QtWidgets.QMainWindow):
    def __init__(self, model, parent=None) -> None:
        super().__init__(parent)

        self._close_window()

        self._model = model

        self._init_ui()

    
    def _close_window(self):
        """ Close Panel """
        _main_window = get_main_window()
        for _child in _main_window.children():
            if _child.__class__.__name__ == self.__class__.__name__:
                _child.close()


    def _init_ui(self):
        self.ui = TyArnoldMainWidget(self.get_model())
        self.setCentralWidget(self.ui)


    def _update_window_title(self):
        _title = f'{NAME} {VERSION}'
        self.setWindowTitle(_title)


    def get_model(self) -> object:
        return self._model

    
    def setup(self):
        self._update_window_title()
        self.resize(*WINDOW_SIZE)


class TyArnold:
    def __init__(self) -> None:
        
        self._model = None
        self._view = None


    def exec(self):
        _main_window = get_main_window()

        self._model = TyArnoldModel()
        self._view = TyArnoldView(self._model, parent=_main_window)
        self._view.setup()
        self._view.show()


#=======================================#
# Main
#=======================================#
def main():
    tyarnold = TyArnold()
    tyarnold.exec()



if __name__ == '__main__':
    main()