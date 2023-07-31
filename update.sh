#!/bin/bash

pm2 delete all
sudo rm -r bot
git clone https://github.com/the-thunderhead/bot
cd bot
./gradlew build
cd ./build/libs/
for f in shadow-*; do
	mv -- "$f" "bot.jar"
done
cd ../../../
rm thunderhead.jar
mv ./bot/build/libs/bot.jar ./thunderhead.jar
