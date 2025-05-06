@echo off
echo 正在清除Windows系统中最近访问的文档痕迹...

:: 清除"最近使用的项目"文件夹
echo 清除"最近使用的项目"文件夹...
del /f /s /q %APPDATA%\Microsoft\Windows\Recent\*
del /f /s /q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
del /f /s /q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*

:: 清除文件资源管理器的地址栏历史记录
echo 清除文件资源管理器的地址栏历史记录...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f

:: 清除"快速访问"中的项目
echo 清除"快速访问"中的最近项目...
del /f /s /q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*.automaticDestinations-ms

:: 清除Office最近文档列表（如果有安装Office）
echo 清除Office最近文档列表...
del /f /s /q %APPDATA%\Microsoft\Office\Recent\*

:: 清除运行框历史记录
echo 清除运行框历史记录...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f

:: 清除Windows搜索历史记录
echo 清除Windows搜索历史记录...
del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\History\*"
del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\WebCache\*"

echo 清除完成!
echo 请注意：某些项目可能需要重启计算机才能完全清除
pause 