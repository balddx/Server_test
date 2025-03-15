# Minecraft Server (1.20.4)

This repository contains setup files for a Minecraft server running version 1.20.4.

## Requirements

- Java 17 or newer
- At least 4GB of RAM dedicated to the server
- Stable internet connection

## Setup Instructions

1. Clone this repository to your local machine:
   ```
   git clone https://github.com/balddx/Server_test.git
   ```

2. Navigate to the server directory:
   ```
   cd Server_test
   ```

3. Run the start script:
   - On Windows: `start.bat`
   - On Linux/Mac: `./start.sh`

4. The first time you run the server, it will generate the necessary files and then stop. You'll need to accept the EULA by editing the `eula.txt` file and changing `eula=false` to `eula=true`.

5. Run the start script again to start the server.

## Configuration

- Server properties can be modified in the `server.properties` file
- For more advanced configuration, check the official Minecraft wiki

## Backup Instructions

It's recommended to regularly back up your world data. You can use the provided `backup.sh` (Linux/Mac) or `backup.bat` (Windows) scripts.

## Troubleshooting

If you encounter issues:
1. Check the server logs in the `logs` directory
2. Ensure you have the correct Java version installed
3. Verify you have allocated enough RAM to the server

## License

This server setup is provided as-is. Minecraft itself is property of Mojang Studios and Microsoft.