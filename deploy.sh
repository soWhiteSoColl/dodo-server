# 第一次需要手动部署
#!/bin/sh
cd /project/common-server

echo "---------- git pull ---------"
git pull 

echo "---------- start install devpendence ! ----------"
yarn install

echo "---------- start build ! ----------"
pm2 restart server


if [ $? -ne 0 ]; then
  echo "---------- deploy falied ! -----------"
else
  echo "---------- deploy success ! -----------"
fi