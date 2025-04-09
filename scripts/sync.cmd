@echo off
if "%1" == "" (
    echo Please provider SolutionDir like: "$(MSBuildThisFileDirectory)"
    exit /B
)

set sourceDir=%1..\src
set targetDir=%1

echo "Ready to copy files to dist

rd /Q /S %targetDir%Auto\BootstrapBlazorApp
rd /Q /S %targetDir%Auto\BootstrapBlazorApp.Client
rd /Q /S %targetDir%Auto-per\BootstrapBlazorApp
rd /Q /S %targetDir%Auto-per\BootstrapBlazorApp.Client
rd /Q /S %targetDir%Server\BootstrapBlazorApp.Server
rd /Q /S %targetDir%WebAssembly\BootstrapBlazorApp
rd /Q /S %targetDir%WebAssembly\BootstrapBlazorApp.Client
rd /Q /S %targetDir%Wasm\BootstrapBlazorApp
rd /Q /S %targetDir%Maui\BootstrapBlazor.Maui
rd /Q /S %targetDir%Maui\BootstrapBlazor.Maui.Shared

rd /Q /S %sourceDir%\Auto\BootstrapBlazorApp\bin
rd /Q /S %sourceDir%\Auto\BootstrapBlazorApp\obj
rd /Q /S %sourceDir%\Auto\BootstrapBlazorApp.Client\bin
rd /Q /S %sourceDir%\Auto\BootstrapBlazorApp.Client\obj
rd /Q /S %sourceDir%\Auto-Per\BootstrapBlazorApp\bin
rd /Q /S %sourceDir%\Auto-Per\BootstrapBlazorApp\obj
rd /Q /S %sourceDir%\Auto-Per\BootstrapBlazorApp.Client\bin
rd /Q /S %sourceDir%\Auto-Per\BootstrapBlazorApp.Client\obj

rd /Q /S %sourceDir%\Server\BootstrapBlazorApp.Server\bin
rd /Q /S %sourceDir%\Server\BootstrapBlazorApp.Server\obj

rd /Q /S %sourceDir%\WebAssembly\BootstrapBlazorApp\bin
rd /Q /S %sourceDir%\WebAssembly\BootstrapBlazorApp\obj
rd /Q /S %sourceDir%\WebAssembly\BootstrapBlazorApp.Client\bin
rd /Q /S %sourceDir%\WebAssembly\BootstrapBlazorApp.Client\obj

rd /Q /S %sourceDir%\Wasm\BootstrapBlazorApp\bin
rd /Q /S %sourceDir%\Wasm\BootstrapBlazorApp\obj

rd /Q /S %sourceDir%\Maui\BootstrapBlazor.Maui\bin
rd /Q /S %sourceDir%\Maui\BootstrapBlazor.Maui\obj
rd /Q /S %sourceDir%\Maui\BootstrapBlazor.Maui.Shared\bin
rd /Q /S %sourceDir%\Maui\BootstrapBlazor.Maui.Shared\obj

xcopy %sourceDir%\Auto\*.* %targetDir%auto /S /R /Y
xcopy %sourceDir%\.editorconfig %targetDir%auto /Y

xcopy %sourceDir%\Auto-Per\*.* %targetDir%auto-per /S /R /Y
xcopy %sourceDir%\.editorconfig %targetDir%auto-per /Y

xcopy %sourceDir%\Server\*.* %targetDir%server /S /R /Y
xcopy %sourceDir%\.editorconfig %targetDir%server /Y

xcopy %sourceDir%\WebAssembly\*.* %targetDir%webassembly /S /R /Y
xcopy %sourceDir%\.editorconfig %targetDir%webassembly /Y

xcopy %sourceDir%\Wasm\*.* %targetDir%Wasm /S /R /Y
xcopy %sourceDir%\.editorconfig %targetDir%Wasm /Y

xcopy %sourceDir%\Maui\*.* %targetDir%Maui /S /R /Y
xcopy %sourceDir%\.editorconfig %targetDir%Maui /Y

echo Sync success!
