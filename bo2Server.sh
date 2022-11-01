WORKING_DIR=$(pwd)


read -e -p "Please enter the name of the server without spaces? " -i "bo2" SERVER_NAME
read -e -p "Please enter the key from plutonium? " SERVER_KEY
read -e -p "Please enter the port for the server? " -i "4976" SERVER_PORT
read -e -p "Please enter the mode of the server (Multiplayer/Zombie)? " -i "Multiplayer" SERVER_MODE


docker run -d --name $SERVER_NAME \
-v plutonium:/home/cod/pluto \
-v $WORKING_DIR/bo2server/init.sh:/home/cod/init.sh \
-v $WORKING_DIR/bo2server/serverfiles:/home/cod/server \
-e KEY=$SERVER_KEY \
-e SERVER_MODE=$SERVER_MODE \
-p $SERVER_PORT:4976 -p $SERVER_PORT:4976/udp codserver
