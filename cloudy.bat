@echo off
if .%1==. (
	echo cloudy ClockId [City [Prefix]]
	echo Shows weather in Windows 10 clock panel.
	echo ClockId - clock number ^(1 or 2^)
	echo City - wttr.in city name
	echo Prefix - any prefix (must be below or equal 7 characters)
	pause > nul
	exit /b 0
)
chcp 65001 > nul
if not .%3==. (set "WeatherPrefix=%3 ") else (set "WeatherPrefix=")
for /f "delims=" %%w in ('curl -sS "wttr.in/%2?format=1"') do @reg add "HKCU\Control Panel\TimeDate\AdditionalClocks\%1" /v DisplayName /t REG_SZ /d "%WeatherPrefix%%%w" /f > nul