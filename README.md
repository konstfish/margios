# margios
Like Nagios but simpler and smaller and uses Telegram as medium.

(Works 100% on raspbian)

### Setup Instructions - docker

1. Create a telegram-send.conf

2. 
```
sudo docker build -t margios ./

sudo docker run -d -v /stor/margios/hosts.txt:/root/hosts.txt --name margios margios
```

### Setup Instructions (normal version)

Step 1. Create a new bot with [@BotFather](https://t.me/BotFather) on Telegram and get the api token

Step 2. Clone the repository

Step 3. Make the setup.sh executabl and run it

Setp 4. Enter the token confirm the bot by sendung to the bot the password you got from the setup script

Step 5. Enter Hosts in the host file

Step 6. Enhjoy the monitor bot that wakes you up at night via a telegram message ;)
