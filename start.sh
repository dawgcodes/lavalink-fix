#!/bin/bash

# Downloading the latest release of Lavalink
echo "Downloading Lavalink JAR..."
if ! curl -sSfL "https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar" -o Lavalink.jar; then
    echo "Failed to download Lavalink JAR. Exiting."
    exit 1
fi

# Check if the download was successful
if [ ! -f "Lavalink.jar" ]; then
    echo "Lavalink JAR not found. Exiting."
    exit 1
fi

echo "Lavalink JAR downloaded successfully."

# Run Lavalink
echo "Starting Lavalink..."
if java -jar "Lavalink.jar"; then
    echo "Lavalink started successfully."
else
    echo "Failed to start Lavalink."
    exit 1
fi
