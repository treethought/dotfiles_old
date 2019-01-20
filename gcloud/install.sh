if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	cd $HOME
	curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-230.0.0-linux-x86_64.tar.gz

	tar zxvf google-cloud-sdk-230.0.0-linux-x86_64.tar.gz google-cloud-sdk

	./google-cloud-sdk/install.sh
fi
