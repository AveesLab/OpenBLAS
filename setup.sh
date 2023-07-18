make TARGET=ARMV8
sudo make PREFIX=/usr/local install
cd
# echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib" >> ".bashrc"
source .bashrc

sudo apt-get install libv4l-dev