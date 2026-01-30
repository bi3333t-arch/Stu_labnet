@echo off
:check
:: 等待 10 秒再检测，避免刷屏太快
timeout /t 10 >nul
ping -n 1 www.baidu.com >nul
IF ERRORLEVEL 1 goto :connection
goto :check

:connection
echo "检测到断网，正在尝试重连..."
:: 下面这行改成你存放 stu_login.py 的实际路径
python "D:\BaiduNetdiskDownload\en\2026_halfyear\lab_network\STU_AutoConnection-main\STU_AutoConnection-main\Network_\src\get_link.py"
:: 重连后等待 5 秒让网络恢复
timeout /t 5 >nul
goto :check