:: This is the publish batch on Windows.
:: You can use the function "Publish..." of Visual Studio 2019 to publish the product on different platforms into the folders: linux, win, mac, etc.
:: Then run this batch to copy the products into the target folder %PUBLISHROOT%

@echo off

SETLOCAL

:: The root folder to publish into
set PUBLISHROOT="..\private\ReleaseDemo\Patch v2.1"

:: Create Relative drectories
mkdir %PUBLISHROOT%\linux\bin\Debug
mkdir %PUBLISHROOT%\mac\bin\Debug
mkdir %PUBLISHROOT%\win\exe\Debug
mkdir %PUBLISHROOT%\win\Game\Debug

:: Copy to release
copy /Y linux\* %PUBLISHROOT%\linux\bin\*
copy /Y linuxfordebug\* %PUBLISHROOT%\linux\bin\Debug\*
copy /Y linuxbash\* %PUBLISHROOT%\linux\*

copy /Y win\* %PUBLISHROOT%\win\exe\*
copy /Y winfordebug\* %PUBLISHROOT%\win\exe\Debug\*
copy /Y game\* %PUBLISHROOT%\win\Game\*
copy /Y winbatch\* %PUBLISHROOT%\win\*

copy /Y mac\* %PUBLISHROOT%\mac\bin\*
copy /Y macfordebug\* %PUBLISHROOT%\mac\bin\Debug\*
copy /Y macbash\* %PUBLISHROOT%\mac\*



:: Init relative files
echo 0 0 > %PUBLISHROOT%\win\Game\job.txt

pause
