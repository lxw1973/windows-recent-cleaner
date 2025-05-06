# Windows最近访问痕迹清除工具

这个工具包含两个脚本，用于清除Windows系统中的最近访问文档痕迹，包括"最近访问的位置"、"快速访问"中的项目等。

## 文件说明

1. `clear_recent_items.bat` - 批处理脚本版本
2. `clear_recent_items.ps1` - PowerShell脚本版本（功能更强大，推荐使用）

## 使用方法

### 批处理脚本 (clear_recent_items.bat)

1. 右键点击 `clear_recent_items.bat` 文件
2. 选择"以管理员身份运行"
3. 等待脚本执行完成

### PowerShell脚本 (clear_recent_items.ps1)

1. 右键点击 `clear_recent_items.ps1` 文件
2. 选择"用PowerShell运行"
3. 如果提示权限问题，脚本会自动请求管理员权限
4. 等待脚本执行完成

## 清除的内容

这些脚本会清除以下内容：

- "最近使用的项目"文件夹中的文件
- 文件资源管理器的地址栏历史记录
- "快速访问"中的最近项目
- Office最近文档列表（如果有安装Office）
- 运行框（Win+R）的历史记录
- Windows搜索历史记录
- 跳转列表
- PowerShell脚本还会清除临时文件

## 注意事项

- 某些项目可能需要重启计算机才能完全清除
- 建议定期运行脚本以保持隐私
- 这些脚本不会删除您保存的文件，只会清除系统记录的访问痕迹

## 自动化使用

如果您希望定期自动清除，可以：

1. 使用任务计划程序设置定时任务
2. 在计算机关机时自动运行脚本

## 安全提示

这些脚本不包含有害代码，但请始终从可信来源获取脚本文件。

## 联系方式

如有问题或建议，欢迎通过以下方式联系：
- 微信: xw-1973
- 博客: [jl-zhenlaixiaowei.blog.csdn.net](https://jl-zhenlaixiaowei.blog.csdn.net)
- GitHub: [lxw1973](https://github.com/lxw1973) 