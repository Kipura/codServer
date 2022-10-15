# Shell Script for Linux Server T6 Plutonium
MODE_PATH=$SERVER_MODE
MODE=""
if [ "$MODE_PATH" = "Multiplayer" ]; then
    MODE_PATH=~/server/Multiplayer
    MODE=t6mp
else
    MODE_PATH=~/server/Zombie
    MODE=t6zm
fi

# Your Game Path
CFG=dedicated.cfg # Name of the config file the server should use. (default: dedicated.cfg)
PORT=4976 # Port used by the server (default: 4976) -> Don't forget to allow server port in ufw fail2ban
ln -sf ~/server/zone ~/server/Multiplayer/zone
ln -sf ~/server/zone ~/server/Zombie/zone
cd ~/
./plutonium-updater -d "./pluto"
cd ~/pluto
wine .\\bin\\plutonium-bootstrapper-win32.exe $MODE $MODE_PATH -dedicated +start_map_rotate +set key $KEY +set net_port $PORT +set sv_config $CFG