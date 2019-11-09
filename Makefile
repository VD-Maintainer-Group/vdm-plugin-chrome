
all:install

install:
	@sudo mkdir -p /etc/opt/chrome/native-messaging-hosts
	sudo cp org.vdm.chrome.json /etc/opt/chrome/native-messaging-hosts/
	@chmod +x vdm-chrome-py/host.py
	sudo cp vdm-chrome-py/host.py /usr/bin/vdm-chrome-host

uninstall:
	sudo rm -f /etc/opt/chrome/native-messaging-hosts/org.vdm.chrome.json
	sudo rm -f /usr/bin/vdm-chrome-host