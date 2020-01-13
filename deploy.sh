#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 自定义域名
echo 'docs.pangxieju.com' > CNAME

git init
git add -A
git commit -m 'deploy '`date +%s`

# 如果发布到 gh-pages
git push -f git@github.com:pangxieju/devbook.git master:gh-pages

cd -