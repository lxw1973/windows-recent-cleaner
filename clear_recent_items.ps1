# 以管理员权限运行PowerShell脚本
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "请以管理员权限运行此脚本！"
    Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}

Write-Host "正在清除Windows系统中最近访问的文档痕迹..." -ForegroundColor Green

# 清除"最近使用的项目"文件夹
Write-Host "清除最近使用的项目文件夹..." -ForegroundColor Cyan
Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Recent\*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Recent\AutomaticDestinations\*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Recent\CustomDestinations\*" -Force -Recurse -ErrorAction SilentlyContinue

# 清除文件资源管理器的地址栏历史记录
Write-Host "清除文件资源管理器的地址栏历史记录..." -ForegroundColor Cyan
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" -Force -ErrorAction SilentlyContinue

# 清除"快速访问"中的项目
Write-Host "清除快速访问中的最近项目..." -ForegroundColor Cyan
Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Recent\AutomaticDestinations\*.automaticDestinations-ms" -Force -ErrorAction SilentlyContinue

# 清除Office最近文档列表（如果有安装Office）
Write-Host "清除Office最近文档列表..." -ForegroundColor Cyan
Remove-Item -Path "$env:APPDATA\Microsoft\Office\Recent\*" -Force -Recurse -ErrorAction SilentlyContinue

# 清除运行框历史记录
Write-Host "清除运行框历史记录..." -ForegroundColor Cyan
Remove-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -Force -ErrorAction SilentlyContinue

# 清除Windows搜索历史记录
Write-Host "清除Windows搜索历史记录..." -ForegroundColor Cyan
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\History\*" -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\WebCache\*" -Force -Recurse -ErrorAction SilentlyContinue

# 清除跳转列表
Write-Host "清除跳转列表..." -ForegroundColor Cyan
Remove-Item -Path "$env:APPDATA\Microsoft\Windows\Recent\CustomDestinations\*.customDestinations-ms" -Force -ErrorAction SilentlyContinue

# 清除临时文件
Write-Host "清除临时文件..." -ForegroundColor Cyan
Remove-Item -Path "$env:TEMP\*" -Force -Recurse -ErrorAction SilentlyContinue

Write-Host "清除完成!" -ForegroundColor Green
Write-Host "请注意：某些项目可能需要重启计算机才能完全清除" -ForegroundColor Yellow
Write-Host "按任意键退出..." -ForegroundColor Magenta
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 