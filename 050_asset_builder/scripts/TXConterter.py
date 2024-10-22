""" TxUtilityManagerを使ったテクスチャーコンバートツール
 
* Mipmap作成

Version:
    * Created : v0.0.1 2024-10-21 Tatsuya YAMAGISHI
    * Coding : Python 3.11.9 & PySide6
    * Author : Tatsuya Yamagishi <tayama27@gmail.com>

Examples:
    >>> OpenImageIO-Arnold 2.4.1.1dev : maketx V:\22013_D_WH\work_3d\prism2\03_Production\Assets\lookdev\ColorchartsRGB\Textures\colorchecker\v0001\colorchecker_acescg_v0001.exr --opaque-detect --constant-color-detect --monochrome-detect --fixnan box3 --oiio --attrib tiff:half 1 -v --unpremult --oiio -u --colorconvert Raw "scene-linear Rec 709/sRGB" --format exr
 
Release Note:
    * v0.0.1 2024-10-21 Tatsuya Yamagishi
        * New
"""

global logger

VERSION = 'v0.0.1'
NAME = 'TxConverter'

import logging
import os
from pathlib import Path
import re
import subprocess


""" Set Texture Root Path """
TEXTURE_ROOT_PATH = Path(r'F:\Users\yamagishi\Dropbox\develop\usd_intro\050_asset_builder\assets\ColorChecker\maps')

#=======================================#
# SETTINGS
#=======================================#
""" SETTINGS """
COLORSPACE_DICT = {
    'ACEScg': 'ACEScg',
    'sRGB': 'sRGB - Texture',
    'Raw' : 'ACEScg',
}
FILE_FORMAT = 'exr' # or tif
FILTER_IMAGE_FILE = re.compile(r'.+\.(bmp|cin|dds|dpx|fits|hdr|ico|iff|jpeg|jpg|exr|png|pnm|psd|rla|sgi|pic|tga|tif|tiff|zfile)')
MAKETX_EXE = r'C:\Program Files\Autodesk\Arnold\maya2025\bin\maketx.exe'
OCIO_CONFIG = r'F:\Users\yamagishi\Dropbox\develop\usd_intro\050_asset_builder\ocio\custom-v0.0.1_aces-v1.3_ocio-v2.1.ocio'
OPTION = '--opaque-detect --constant-color-detect --monochrome-detect --fixnan box3 --oiio --attrib tiff:half 1 -v --checknan --unpremult --oiio --colorconvert'
RENDER_COLORSPACE = 'ACEScg'

os.environ['PATH'] = r'C:\Program Files\Autodesk\Arnold\maya2025\bin'

#=======================================#
# Functions
#=======================================#
#=======================================#
# Main
#=======================================#
def convert_to_tx(logger: logging.Logger, filepath: Path):
    _src = str(filepath)
    _dst = str(filepath.with_suffix('.tx'))

    if os.path.exists(_dst):
        return
    else:
        _src_colorspace = 'Raw'
        for _colorspace in sorted(COLORSPACE_DICT):
            if _colorspace in _src:
                _src_colorspace = COLORSPACE_DICT[_colorspace]


        _cmd = f'maketx {_src} {OPTION} "{_src_colorspace}" "{RENDER_COLORSPACE}" --format {FILE_FORMAT} -o {_dst}'
        

        logger.info(f'{NAME} | [ Name : {filepath.stem} ]')
        logger.info(f'{NAME} | {_src=}')
        logger.info(f'{NAME} | {_src_colorspace=}')
        logger.info(f'{NAME} | {_dst=}')
        logger.info(f'{NAME} | [ Command ]')
        logger.info(f'{NAME} | {_cmd}')
        
        # _cmd = f'maketx --help'
        process = subprocess.run(_cmd, shell=True)
        logger.info(process)


def main(logger: logging.Logger):
    logger.info('-----------------------------------')
    logger.info(f'{NAME} {VERSION}')
    logger.info('-----------------------------------')

    # Set OCIO
    if os.path.exists(OCIO_CONFIG):
        os.environ['OCIO'] = OCIO_CONFIG
    else:
        raise FileNotFoundError()
    
    logger.info(f'{NAME} | OCIO = {os.environ.get("OCIO")}')


    # Collect Image File
    _image_file_list = [ _texture_path for _texture_path in TEXTURE_ROOT_PATH.iterdir()
                                if FILTER_IMAGE_FILE.match(str(_texture_path))]

    logger.info(f'{NAME} | [Image file list]')
    logger.info(_image_file_list)


    # Convert to TX
    for _image_filepath in _image_file_list:
        convert_to_tx(logger, _image_filepath)


#=======================================#
# Debug
#=======================================#
if __name__ == '__main__':
    #-------------------------#
    # Setup Logger
    #-------------------------#
    logger = logging.getLogger(__name__)
    logger.setLevel(logging.INFO)
    logger.propagate = False

    stream_handler = logging.StreamHandler()
    stream_handler.setFormatter(
        logging.Formatter(
            '[%(levelname)s][%(name)s][%(funcName)s:%(lineno)s] %(message)s'))
    
    logger.addHandler(stream_handler)


    #-------------------------#
    # Main
    #-------------------------#
    main(logger)