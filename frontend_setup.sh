#!/bin/bash

# 检查Node.js环境
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed"
    exit 1
fi

# 检查npm环境
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed"
    exit 1
fi

# 创建uni-app项目
echo "Creating uni-app project..."
npx degit dcloudio/uni-preset-vue#vite frontend

cd frontend

# 安装依赖
echo "Installing dependencies..."
npm install

# 安装额外依赖
npm install axios vuex@next @dcloudio/uni-ui sass -D

# 创建目录结构
echo "Creating directory structure..."
mkdir -p src/api
mkdir -p src/components
mkdir -p src/pages/login
mkdir -p src/pages/register
mkdir -p src/pages/post
mkdir -p src/pages/user
mkdir -p src/store
mkdir -p src/utils
mkdir -p src/static/images
mkdir -p src/static/styles

echo "Project setup completed!"
echo "To start the development server, run:"
echo "cd frontend"
echo "npm run dev:h5" 