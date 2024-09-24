'mtoa_metal'""" tySetMaterialAttr
 
* MtoA Render Manager

Info:
    * Created : 2024-09-09 Tatsuya YAMAGISHI
    * Coding : Python 3.11.9 & PySide6
    * Author : CG Sup. Tatsuya Yamagishi
 
Release Note:
    * v0.0.1 2024-09-09 Tatsuya Yamagishi
        * Added
        * Changed
        * Updated
        * Fixed
"""
global logger

VERSION = 'v0.0.1'
NAME = 'tySetMaterialAttr'


import os
import subprocess

import maya.cmds as cmds
import maya.mel as mel



#=======================================#
# Settings
#=======================================#
ATTR_DICT = {
    'material': '',
    'diffuse': '',
    'metal': '',
    'rough': '',
    'normal': '',
}

#=======================================#
# Functions
#=======================================#
def get_materials_from_node(node: str) -> str:
    """ ノード名からマテリアルを取得
    
    Args:
        node(str): ノード名

    Returns:
        str: マテリアル名
    """
    # シェーディンググループを取得
    _shading_groups = cmds.listConnections(node, s=False, d=True, t='shadingEngine')
    print(f'TY | {_shading_groups=}')
    
    if _shading_groups:
        # シェーディンググループからマテリアルを取得
        materials = cmds.ls(cmds.listConnections(_shading_groups), materials=True)
        return materials
    
    return None


def get_shape_from_node(node: str) -> str:
    """ ノード名からシェイプを取得

    Args:
        node(str): ノード名

    Returns:
        str: シェイプ名
    """

    return cmds.listRelatives(node, shapes=True)[0]



def set_material_attrs(shape: str, data: dict):
    for _attr, value in data.items():
        if not cmds.attributeQuery(_attr, node=shape, exists=1):
            cmds.addAttr(shape, longName=_attr, dataType='string')
        print(f'TY | {shape=} {_attr=} {value=}')

        cmds.setAttr(f'{shape}.{_attr}', value, type='string')


#=======================================#
# Main
#=======================================#
def set_attrs():
    for _node in cmds.ls(sl=True):
        print(f'----------------------------')
        print(f'TY | {_node=}')

    _shape = get_shape_from_node(_node)
        
    if _shape:
        _material_list = get_materials_from_node(_shape)
        print(f'TY | {_shape=}')
        print(f'TY | {_material_list=}')

        if _material_list:
            ATTR_DICT['material'] = _material_list[0]

            # Diffuse
            _diffuse_tex_nodes = cmds.listConnections(f'{ATTR_DICT["material"]}.baseColor')
            if _diffuse_tex_nodes:
                ATTR_DICT['diffuse'] = cmds.getAttr(f'{_diffuse_tex_nodes[0]}.fileTextureName')


            # Metalness
            _metal_tex_nodes = cmds.listConnections(f'{ATTR_DICT["material"]}.metalness')
            if _metal_tex_nodes:
                ATTR_DICT['metal'] = cmds.getAttr(f'{_metal_tex_nodes[0]}.fileTextureName')


            # Specular Roughness
            _metal_tex_nodes = cmds.listConnections(f'{ATTR_DICT["material"]}.specularRoughness')
            if _metal_tex_nodes:
                ATTR_DICT['metal'] = cmds.getAttr(f'{_metal_tex_nodes[0]}.fileTextureName')


            # Normals
            # _metal_tex_nodes = cmds.listConnections(f'{ATTR_DICT["rough"]}.specularRoughness')
            # if _metal_tex_nodes:
            #     ATTR_DICT['metal'] = cmds.getAttr(f'{_metal_tex_nodes[0]}.fileTextureName')


            print(f'\nTY | [Shot Attr]')
            for key, value in ATTR_DICT.items():
                print(f'TY | {key} = {value}')

            set_material_attrs(_shape, ATTR_DICT)



def export_abc(filepath: str, attrs=None):
    print(f'----------------------------')
    print(f'TY | [Exprot Alembic]')
    
    _filepath = filepath.replace('\\', '/')

    if attrs is None:
        attrs=[]

    _node_list = cmds.ls(sl=True)

    if _node_list:
        _name = _node_list[0]

        if _name.find("|")!= -1:
            _name = _name.rsplit("|",1)[1]

        _nodes = "".join([" -root "+x for x in _node_list])
        _attrs = _nodes + "".join([" -attr "+x for x in attrs])
        _first = cmds.playbackOptions(q=True, ast=True)
        _last = cmds.playbackOptions(q=True, max=True)
        _frames = f'-frameRange {_first} {_last} '
        # _cmd = "{}-stripNamespaces -uvWrite{}{} -file {}".format(_frames, _attrs, _nodes, filepath)
        _cmd = f'AbcExport -j "{_frames} -stripNamespaces -uvWrite{_attrs} -file {_filepath}"'
        print(f'TY | {_cmd=}')
                
        mel.eval(_cmd)


        cmd = 'explorer {}'.format(os.path.dirname(filepath).replace('/', '\\'))
        subprocess.Popen(cmd)



def main():
    set_attrs()
    _attr_list = sorted(ATTR_DICT)
    export_abc(
        r'C:/Users/yamagishi/look_v0002.abc',
        attrs = _attr_list
    )

if __name__ == '__main__':
    main()