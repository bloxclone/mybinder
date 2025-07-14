# Check if mybinder directory exists
if [ -d "mybinder" ] && [ -d "mybinder/modded" ]; then
    echo "running directly..."
    cd mybinder/modded
    ./modded
else
    echo "downloading full..."
    git clone https://github.com/bloxclone/mybinder
    cd mybinder
    tar -xvf modded-w.tar.gz
    cd modded
    chmod +x modded
    ./modded
fi
