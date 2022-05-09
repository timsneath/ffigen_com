@echo off

echo Generating COM classes from header files...
call dart %~dp0generate\generate.dart %~dp0generate\com %~dp0..\output
echo.

echo Generating Windows Runtime classes from IDL
call dart %~dp0generate\generate.dart %~dp0generate\winrt %~dp0..\output
echo.

echo Formatting generated source code
call dart format %~dp0..\output
echo.

:end