@echo off
FOR /F "tokens=* USEBACKQ" %%F IN (`"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe" -latest -property installationpath`) DO (
    SET VS_INSTALL_PATH=%%F
)
SET VS_VARS_BAT=%VS_INSTALL_PATH%\VC\Auxiliary\Build\vcvars64.bat
CALL "%VS_VARS_BAT%"
