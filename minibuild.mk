# This makefile follows grammar syntax of 'MiniBuild' build system,
# for details see https://minibuild.github.io/minibuild/

#pragma build output-wsl='output/wsl'

#pragma os:windows nasm executable='C:\NASM\nasm.exe'

#pragma os:windows default model=sys:native
#pragma os:windows toolset module=msvs    version=2017  arch=x86:0x0601,x86_64:0x0601       alias=sys:native

#pragma os:windows toolset module=mingw   package='C:\mingw-w64\i686-5.4.0-win32-dwarf-rt_v5-rev0\mingw32' arch=x86:0x0601
#pragma os:windows toolset module=mingw   package='C:\mingw-w64\x86_64-5.4.0-win32-seh-rt_v5-rev0\mingw64' arch=x86_64:0x0601

#pragma os:linux   toolset required=1 module=xtools   package='~/x-tools/x86_64-unknown-linux-gnu' prefix=x86_64-unknown-linux-gnu- arch=x86_64
#pragma os:macosx  toolset required=1 module=clang    arch=x86_64:10.9

#pragma os:linux pass   cmdline='--model gcc-xt-linux-x86_64 --public --public-format zip --public-layout flat --directory bundle'
#pragma os:macosx pass  cmdline='--model clang-macosx-x86_64 --public --public-format zip --public-layout flat --directory bundle'
#pragma os:windows pass cmdline='--model mingw-win64         --public --public-format zip --public-layout flat --directory bundle'
