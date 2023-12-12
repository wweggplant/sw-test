#!/bin/bash

# 切换到 Git 仓库的目录
cd ./

# 检查 dev 分支是否存在
if git rev-parse --verify dev > /dev/null 2>&1; then
    # 如果 dev 分支存在，切换到 dev 分支
    git checkout dev
else
    # 如果 dev 分支不存在，创建并切换到 dev 分支
    git checkout -b dev
fi

# 向 README.md 文件追加随机文本
echo "Random text: $(date)" >> README.md

# 添加更改到暂存区
git add README.md

# 提交更改
git commit -m "Append random text to README"

# 推送到远程仓库
git push -u origin dev
