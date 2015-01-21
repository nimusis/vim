아래 2가지 방법으로 간단하게 사용할 수 있음. 
curl이 설치 되어있지 않으면 wget 사용하면 됨.

- curl -L https://github.com/nimusis/vim/blob/master/install.sh?raw=true | bash
- wget --no-check-certificate https://github.com/nimusis/vim/blob/master/install.sh?raw=true -O - | bash

centos6.4, ubuntu 64bit,32bit 에서 테스트 해봄.
