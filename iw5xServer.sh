WORKING_DIR=$(pwd)


read -e -p "Please enter the name of the server without spaces? " -i "iw5x" SERVER_NAME
read -e -p "Please enter the key from plutonium? " SERVER_KEY
read -e -p "Please enter the port for the server? " -i "27016" SERVER_PORT


docker run -d --name $SERVER_NAME \
-v plutonium:/home/cod/pluto \
-v $WORKING_DIR/mw3server/init.sh:/home/cod/init.sh \
-v $WORKING_DIR/mw3server/serverfiles:/home/cod/server \
-e KEY=$SERVER_KEY \
-p $SERVER_PORT:27016 -p $SERVER_PORT:27016/udp codserver
