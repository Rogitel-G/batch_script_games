@echo off
chcp 1251
setlocal enabledelayedexpansion
color F0

rem ������ ������� �����
set /p num1="������� ������ �����: "

rem ������ ������� �����
set /p num2="������� ������ �����: "
color 02
rem ����������� ������ ��������
echo �������� ��������:
echo 1: ��������
echo 2: ���������
set /p choice="������� ����� �������� (1 ��� 2): "

rem ���������� ��������� ��������
if "!choice!"=="1" (
    set /a result=num1 + num2
    echo ��������� ��������: !result!
) else if "!choice!"=="2" (
    set /a result=num1 * num2
    echo ��������� ���������: !result!
) else (
    echo �������� �����. ����������, ��������� ������ ����� � �������� 1 ��� 2.
)

endlocal
pause