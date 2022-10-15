cd ~/
./plutonium-updater -d "./pluto"

cd ~/pluto

wine .\\bin\\plutonium-bootstrapper-win32.exe iw5mp ~/server/ -dedicated +start_map_rotate +set key $KEY +set net_port 27016 +set sv_config server.cfg
