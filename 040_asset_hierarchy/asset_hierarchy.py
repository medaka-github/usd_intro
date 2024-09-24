import os

from pxr import Kind, Sdf, Usd, UsdGeom


def main():
    root = r'F:/Users/yamagishi/Dropbox/develop/usd_intro/040_asset_hierarchy'
    filename = 'asset_hierarchy_v0001.usda'

    #-----------------
    # Create Stage
    # posix_pathにしないとエラー
    _stage = Usd.Stage.CreateNew(f'{root}/{filename}')

    #-----------------
    # Root
    _root_prim = _stage.DefinePrim('/Asset', 'Xform')

    # Set Component
    _model_api = Usd.ModelAPI(_root_prim)
    _model_api.SetKind(Kind.Tokens.component)


    #-----------------
    # Geo
    _geo_prim = _stage.DefinePrim('/Asset/geo', 'Scope')
    _proxy_prim = _stage.DefinePrim('/Asset/geo/proxy', 'Xform')
    _render_prim = _stage.DefinePrim('/Asset/geo/render', 'Xform')

    #-----------------
    # Mtl
    _mtl_prim = _stage.DefinePrim('/Asset/mtl', 'Scope')

    #-----------------
    # Rig
    _rig_prim = _stage.DefinePrim('/Asset/rig', 'Scope')
    _setup_prim = _stage.DefinePrim('/Asset/rig/setup', 'Scope')
    _ctrl_prim = _stage.DefinePrim('/Asset/rig/ctrl', 'Scope')


    #-----------------
    # Skel
    _skel_prim = _stage.DefinePrim('/Asset/skel', 'Scope')


    #-----------------
    # FX
    _fx_prim = _stage.DefinePrim('/Asset/fx', 'Scope')


    #-----------------
    # Camera
    _fx_prim = _stage.DefinePrim('/Asset/cam', 'Scope')


    #-----------------
    # Light
    _lgt_prim = _stage.DefinePrim('/Asset/lgt', 'Scope')

    #-----------------
    # Save
    _stage.GetRootLayer().Save()

    print('TY | Create `USD Scene` completed.')


if __name__ == '__main__':
    main()