@echo off
chcp 65001

echo Creating backup...

cd frontend
if not exist "backup" mkdir backup

echo Backing up pages...
if exist "src\pages" xcopy "src\pages" "backup\pages\" /E /I /Y

echo Backing up components...
if exist "src\components" xcopy "src\components" "backup\components\" /E /I /Y

echo Backing up store...
if exist "src\store" xcopy "src\store" "backup\store\" /E /I /Y

echo Backing up api...
if exist "src\api" xcopy "src\api" "backup\api\" /E /I /Y

echo Backing up utils...
if exist "src\utils" xcopy "src\utils" "backup\utils\" /E /I /Y

echo Backup completed!
cd ..

pause 