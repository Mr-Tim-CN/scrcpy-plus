::参考https://github.com/Genymobile/scrcpy/blob/master/README.zh-Hans.md#%E6%97%A0%E7%BA%BF
@echo off
echo 请使安卓设备与PC位于同一局域网。（可将其连接至同一局域网，或将安卓连接至PC热点，或将PC连接至安卓热点。）
pause
echo 请将安卓设备与PC用USB连接，并打开安卓设备USB调试模式。
pause
echo 正在获取安卓设备ip……
for /f %%i in ('adb shell ip route ^^^| awk '{print $9}'') do set ip=%%i
echo 正在启用安卓设备网络adb功能……
adb tcpip 5555
echo 请断开安卓设备与PC的USB连接。
pause
echo 正在使用网络连接至安卓设备……
adb connect %ip%:5555
echo 正在启动投屏……
scrcpy
echo 正在断开与安卓设备的网络连接。
adb disconnect
echo 投屏结束。
pause