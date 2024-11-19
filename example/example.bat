@echo off
chcp 1251
setlocal enabledelayedexpansion
color F0

rem Запрос первого числа
set /p num1="Введите первое число: "

rem Запрос второго числа
set /p num2="Введите второе число: "
color 02
rem Предложение выбора операции
echo Выберите операцию:
echo 1: Сложение
echo 2: Умножение
set /p choice="Введите номер операции (1 или 2): "

rem Выполнение выбранной операции
if "!choice!"=="1" (
    set /a result=num1 + num2
    echo Результат сложения: !result!
) else if "!choice!"=="2" (
    set /a result=num1 * num2
    echo Результат умножения: !result!
) else (
    echo Неверный выбор. Пожалуйста, запустите скрипт снова и выберите 1 или 2.
)

endlocal
pause