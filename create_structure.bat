@echo off
chcp 65001

echo Creating project structure...

cd frontend

REM 创建目录结构
mkdir src\api
mkdir src\assets
mkdir src\components
mkdir src\composables
mkdir src\layouts
mkdir src\router
mkdir src\stores
mkdir src\styles
mkdir src\types
mkdir src\utils
mkdir src\views
mkdir src\views\auth
mkdir src\views\post
mkdir src\views\user

REM 创建基础样式文件
echo /* Global styles */ > src\styles\index.scss
echo /* Variables */ > src\styles\variables.scss
echo /* Mixins */ > src\styles\mixins.scss

echo Project structure created successfully!
cd ..

pause 