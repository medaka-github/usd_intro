SET USD_ROOT=<root>\usd_0.24.05_py310_win
SET PYTHONPATH=%USD_ROOT%\lib\python;%USD_ROOT%\pip-packages
SET PATH=%USD_ROOT%\bin;%USD_ROOT%\lib;%USD_ROOT%\python

:: USDのPythonインタープリタ起動
python

:: Pythonファイルを実行する場合
@REM python usd_hello_world.py