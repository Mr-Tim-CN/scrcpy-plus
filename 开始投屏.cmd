::�ο�https://github.com/Genymobile/scrcpy/blob/master/README.zh-Hans.md#%E6%97%A0%E7%BA%BF
@echo off
echo ��ʹ��׿�豸��PCλ��ͬһ�����������ɽ���������ͬһ���������򽫰�׿������PC�ȵ㣬��PC��������׿�ȵ㡣��
pause
echo �뽫��׿�豸��PC��USB���ӣ����򿪰�׿�豸USB����ģʽ��
pause
echo ���ڻ�ȡ��׿�豸ip����
for /f %%i in ('adb shell ip route ^^^| awk '{print $9}'') do set ip=%%i
echo �������ð�׿�豸����adb���ܡ���
adb tcpip 5555
echo ��Ͽ���׿�豸��PC��USB���ӡ�
pause
echo ����ʹ��������������׿�豸����
adb connect %ip%:5555
echo ��������Ͷ������
scrcpy
echo ���ڶϿ��밲׿�豸���������ӡ�
adb disconnect
echo Ͷ��������
pause