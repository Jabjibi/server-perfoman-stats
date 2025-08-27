# Server Performance Stats

## Overview
This project provides a simple script to gather and display basic server performance statistics on a Linux-based system. The script is intended to be run on any server running Ubuntu (or similar Linux distributions) and will provide insights into the server's CPU usage, memory usage, disk usage, top processes, and other relevant server metrics.

## Features
- **CPU Usage**: Displays the current CPU usage as a percentage
- **Memory Usage**: Shows the total memory, used memory, and free memory along with the percentage used
- **Disk Usage**: Displays disk space usage, including used and free space on various mounted drives
- **Top Processes by CPU Usage**: Lists the top 5 processes consuming the most CPU resources
- **Top Processes by Memory Usage**: Lists the top 5 processes consuming the most memory
- **OS Version**: Shows the version of the operating system running on the server
- **Uptime**: Displays the uptime of the server since the last reboot
- **Logged-in Users**: Lists all users currently logged into the system
- **Failed Login Attempts**: Displays any failed login attempts by users (requires `sudo` permissions)

## Requirements
- **Linux-based OS** (e.g., Ubuntu, Debian)
- **Bash shell** (default on most Linux systems)
- **sudo permissions** for viewing failed login attempts

## Installation
1. Clone this repository to your server:
   ```bash
   git clone https://github.com/your-username/server-performance-stats.git
   cd server-performance-stats
   ```

2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```

3. Run the script:
   ```bash
   ./server-stats.sh
   ```

## Usage
Simply execute the script to get a comprehensive overview of your server's performance:

```bash
./server-stats.sh
```

For failed login attempts information, run with sudo:
```bash
sudo ./server-stats.sh
```

## Sample Output
```
CPU Usage: 12.3%
Memory Usage: Used: 3.4GB / Free: 2.6GB / Total: 6GB (Percentage: 56%)
Disk Usage:
  /dev/sda1 Used: 20GB / Free: 80GB (Percentage: 20%)
Top 5 CPU Processes:
  1. systemd           5.4%
  2. apache2            4.3%
  3. mysql              2.1%
  4. bash               1.3%
  5. sshd               0.9%
Top 5 Memory Processes:
  1. apache2            1.5GB
  2. mysql              1.1GB
  3. systemd            0.8GB
  4. bash               0.5GB
  5. sshd               0.3GB
OS Version: Ubuntu 20.04.3 LTS
Uptime: up 5 hours, 23 minutes
Logged in Users:
  user1   pts/0        2021-08-27 10:30
  user2   pts/1        2021-08-27 10:35
Failed Login Attempts:
  user3  Wed Aug 27 10:22
```

## Troubleshooting
- **Permission Issues**: Some commands in the script require `sudo` (e.g., failed login attempts). Make sure you have the necessary permissions to run these commands.
- **Command Not Found**: If certain commands (like `lastb`) are not found, you may need to install additional packages or ensure the necessary logs are accessible.

## Contributing
We welcome contributions! Please feel free to:
- Fork the repository
- Create a feature branch
- Make your improvements
- Submit a pull request
