@echo off
md build
cd build
cmake -A Win32  ../

set devenv_dir="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv"
echo "start build Release"
%devenv_dir% GLFW.sln /Build "Release|Win32"
echo "start build Debug"
%devenv_dir% GLFW.sln /Build "Debug|Win32"

md ..\infistd\lib\win\x86\
xcopy src\Release\glfw3.dll ..\..\infistd\lib\win\x86\release\glfw3.dll  /s /e /c /y /h /r
xcopy src\Release\glfw3dll.lib ..\..\infistd\lib\win\x86\release\glfw3.lib  /s /e /c /y /h /r
xcopy src\Debug\glfw3.dll ..\..\infistd\lib\win\x86\debug\glfw3d.dll  /s /e /c /y /h /r
xcopy src\Debug\glfw3dll.lib ..\..\infistd\lib\win\x86\debug\glfw3d.lib  /s /e /c /y /h /r