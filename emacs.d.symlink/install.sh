if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	git clone -b master git://git.sv.gnu.org/emacs.git
	sudo apt-get -y install build-essential automake texinfo libjpeg-dev libncurses5-dev
	sudo apt-get -y install libtiff5-dev libgif-dev libpng-dev libxpm-dev libgtk-3-dev libgnutls28-dev
	cd emacs/
	./autogen.sh
	./configure --with-mailutils --prefix=/usr/local/stow/emacs
	make
	sudo make install
	cd /usr/local/stow
	sudo stow emacs

fi
