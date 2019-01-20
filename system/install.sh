if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	sudo apt-get update
	sudo apt-get install -y git

	# python dependencies
	sudo apt-get install -y make build-essential libssl-dev zlib1g-dev
	sudo apt-get install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
	sudo apt-get install -y libncurses5-dev libncursesw5-dev xz-utils tk-dev
	sudo apt-get install libsecret-1-dev

	# install python3.7
	cd /usr/local
	wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
	tar xzf Python-3.7.0.tgz
	cd Python-3.7.0
	./configure --enable-optimizations --with-ensurepip=install
	make
	make altinstall
	chmod +x python3.7
	cd ..
	cd ~

	# install pip
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	Python-3.7.0/python get-pip.py

	pip3 install --user pipenv

	# install python2.7
	sudo apt-get install python2.7
	sudo python2.7 get-pip.py


fi
