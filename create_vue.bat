@echo off
chcp 65001

echo Creating Vue 3 + TypeScript project...

REM 删除现有项目
rd /s /q frontend

REM 创建新的Vue3项目
echo Creating new project...
call npm create vite@latest frontend -- --template vue-ts

cd frontend

REM 安装依赖
echo Installing dependencies...
call npm install

REM 安装额外依赖
echo Installing additional dependencies...
call npm install vue-router@4 pinia@2 axios element-plus @element-plus/icons-vue sass -D
call npm install @types/node -D

echo Project created successfully!
cd ..

pause 