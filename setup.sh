#!/bin/bash

# 创建项目目录结构
mkdir -p zhuoyue-blog/{backend,frontend}

# 后端目录结构
cd zhuoyue-blog/backend
mkdir -p src/main/java/com/zhuoyue/{controller,service,model,repository,security,config,exception,dto,payload}
mkdir -p src/main/resources/{static,templates}
mkdir -p src/test/java/com/zhuoyue

# 创建必要的目录
mkdir -p uploads/{images,files}

# 复制环境变量文件
cp ../../.env .

# 前端初始化
cd ../frontend

# 安装依赖
npm install vue@next vuex@next vue-router@4
npm install axios
npm install @dcloudio/uni-ui
npm install sass sass-loader -D

# 创建前端目录结构
mkdir -p src/{api,components,layouts,pages,store,utils}
mkdir -p src/pages/{login,register,post,user}
mkdir -p src/static/{images,styles}

echo "项目初始化完成" 