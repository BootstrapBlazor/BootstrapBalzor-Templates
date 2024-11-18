#!/bin/sh
# Permission denied
# chmod a+x sync.sh

if [ $1 = "" ]; then
    echo Please provider SolutionDir like: "$(MSBuildThisFileDirectory)"
    exit 1
fi

sourceDir=$1../src
targetDir=$1

expansionSourceDir=$1..\src\expansions
expansionTargetDir=$1expansions\

echo "Ready to copy files to dist"

echo copy $sourceDir $targetDir 

rm -rf $targetDir/Auto/BootstrapBlazorApp
rm -rf $targetDir/Auto/BootstrapBlazorApp.Client
rm -rf $targetDir/Auto-per/BootstrapBlazorApp
rm -rf $targetDir/Auto-per/BootstrapBlazorApp.Client
rm -rf $targetDir/Server/BootstrapBlazorApp.Server
rm -rf $targetDir/WebAssembly/BootstrapBlazorApp
rm -rf $targetDir/WebAssembly/BootstrapBlazorApp.Client
rm -rf $targetDir/Wasm/BootstrapBlazorApp

rm -rf $sourceDir/Auto/BootstrapBlazorApp/bin
rm -rf $sourceDir/Auto/BootstrapBlazorApp/obj
rm -rf $sourceDir/Auto/BootstrapBlazorApp.Client/bin
rm -rf $sourceDir/Auto/BootstrapBlazorApp.Client/obj

rm -rf $sourceDir/Auto-Per/BootstrapBlazorApp/bin
rm -rf $sourceDir/Auto-Per/BootstrapBlazorApp/obj
rm -rf $sourceDir/Auto-Per/BootstrapBlazorApp.Client/bin
rm -rf $sourceDir/Auto-Per/BootstrapBlazorApp.Client/obj

rm -rf $sourceDir/Server/BootstrapBlazorApp.Server/bin
rm -rf $sourceDir/Server/BootstrapBlazorApp.Server/obj

rm -rf $sourceDir/WebAssembly/BootstrapBlazorApp/bin
rm -rf $sourceDir/WebAssembly/BootstrapBlazorApp/obj
rm -rf $sourceDir/WebAssembly/BootstrapBlazorApp.Client/bin
rm -rf $sourceDir/WebAssembly/BootstrapBlazorApp.Client/obj

rm -rf $sourceDir/Wasm/BootstrapBlazorApp/bin
rm -rf $sourceDir/Wasm/BootstrapBlazorApp/obj

\cp -r $sourceDir/Auto/BootstrapBlazorApp/ $targetDir/auto/BootstrapBlazorApp/
\cp -r $sourceDir/Auto/BootstrapBlazorApp.Client/ $targetDir/auto/BootstrapBlazorApp.Client/
\cp $sourceDir/.editorconfig $targetDir/auto/

\cp -r $sourceDir/Auto-Per/BootstrapBlazorApp/ $targetDir/auto-per/BootstrapBlazorApp/
\cp -r $sourceDir/Auto-Per/BootstrapBlazorApp.Client/ $targetDir/auto-per/BootstrapBlazorApp.Client/
\cp $sourceDir/.editorconfig $targetDir/auto-per/

\cp -r $sourceDir/Server/BootstrapBlazorApp.Server/ $targetDir/server/BootstrapBlazorApp.Server/
\cp $sourceDir/.editorconfig $targetDir/server/

\cp -r $sourceDir/WebAssembly/BootstrapBlazorApp/ $targetDir/webassembly/BootstrapBlazorApp/
\cp -r $sourceDir/WebAssembly/BootstrapBlazorApp.Client/ $targetDir/webassembly/BootstrapBlazorApp.Client/
\cp $sourceDir/.editorconfig $targetDir/webassembly/

\cp -r $sourceDir/Wasm/BootstrapBlazorApp/ $targetDir/webassembly/BootstrapBlazorApp/
\cp $sourceDir/.editorconfig $targetDir/webassembly/

echo Sync success!
