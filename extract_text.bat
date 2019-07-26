@echo off
setlocal enabledelayedexpansion

:: Paths
set BPATH=%1
set OPATH=%2
set LANG=%3
set MIN_WORDS=5

:: Default language to English if not provided
if "%LANG%"=="" set LANG=eng

:: Create output directory if it doesn't exist
if not exist "%OPATH%" mkdir "%OPATH%"

:: Loop through all PDF files in the input folder
for %%F in ("%BPATH%\*.pdf") do (
    set FILEPATH=%%F
    set OUTFILE=%OPATH%\%%~nF.txt

    echo Attempting pdftotext extraction...
    pdftotext "%%F" "!OUTFILE!"
    
    for /f %%W in ('find /v /c "" ^<"!OUTFILE!"') do set FILESIZE=%%W
    echo Extracted !
