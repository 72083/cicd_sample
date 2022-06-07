#nvm 환경변수 설정
export NVM_DIR="$HOME/.nvm"
[ -s "NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "NVM_DIR/bash_completion"

cd $PROJECT_ROOT

# 원래 node 프로세스 종료
sudo kill -9 `ps -ef | grep 'node ./bin/www' | awk '{print $2}'`
nohup npm start >/home/ec2-user/logs 2>&1 </home/ubuntu/errors &
