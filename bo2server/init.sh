# Shell Script for Linux Server T6 Plutonium
PAT=~/server/Multiplayer # Your Game Path
KEY='MZzx8a2VsUmkQhVy6pj3mGkVR31JetPk' # Paste the server key from https://platform.plutonium.pw/serverkeys
CFG=dedicated.cfg # Name of the config file the server should use. (default: dedicated.cfg)
PORT=4976 # Port used by the server (default: 4976) -> Don't forget to allow server port in ufw fail2ban
MODE=t6mp # Game Mode ( Multiplayer / Zombie ) -> ( t6mp / t6zm )
ln -sf ~/server/zone ~/server/Multiplayer/zone
ln -sf ~/server/zone ~/server/Zombie/zone
cd ~/
./plutonium-updater -d "./pluto"
cd ~/pluto
wine .\\bin\\plutonium-bootstrapper-win32.exe $MODE $PAT -dedicated +start_map_rotate +set key $KEY +set net_port $PORT +set sv_config $CFG