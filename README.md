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
การใช้งาน CPU:
การใช้งาน CPU: 0.6%
การใช้หน่วยความจำ:
ใช้: 606Mi / ว่าง: 6.3Gi / รวม: 7.4Gi (เปอร์เซ็นต์: 8189.19%)
การใช้ดิสก์:
none ใช้: 0 / ว่าง: 3.7G (เปอร์เซ็นต์: 0%)
none ใช้: 4.0K / ว่าง: 3.7G (เปอร์เซ็นต์: 1%)
drivers ใช้: 158G / ว่าง: 319G (เปอร์เซ็นต์: 34%)
/dev/sdd ใช้: 1.3G / ว่าง: 955G (เปอร์เซ็นต์: 1%)
none ใช้: 76K / ว่าง: 3.7G (เปอร์เซ็นต์: 1%)
none ใช้: 0 / ว่าง: 3.7G (เปอร์เซ็นต์: 0%)
rootfs ใช้: 2.7M / ว่าง: 3.7G (เปอร์เซ็นต์: 1%)
none ใช้: 548K / ว่าง: 3.7G (เปอร์เซ็นต์: 1%)
none ใช้: 0 / ว่าง: 3.7G (เปอร์เซ็นต์: 0%)
none ใช้: 0 / ว่าง: 3.7G (เปอร์เซ็นต์: 0%)
none ใช้: 100K / ว่าง: 3.7G (เปอร์เซ็นต์: 1%)
none ใช้: 100K / ว่าง: 3.7G (เปอร์เซ็นต์: 1%)
C:\ ใช้: 158G / ว่าง: 319G (เปอร์เซ็นต์: 34%)
5 กระบวนการยอดนิยมตามการใช้งาน CPU:
    687 (udev-worker)    0.4
      1 systemd          0.1
    106 systemd-udevd    0.0
     52 systemd-journal  0.0
    501 systemd          0.0
5 กระบวนการยอดนิยมตามการใช้งานหน่วยความจำ:
    230 unattended-upgr  0.2
     52 systemd-journal  0.2
      1 systemd          0.1
    119 systemd-resolve  0.1
    202 wsl-pro-service  0.1
เวอร์ชันของระบบปฏิบัติการ:
6.6.87.2-microsoft-standard-WSL2
เวลาทำงานของเซิร์ฟเวอร์:
up 6 minutes
ผู้ใช้ที่เข้าสู่ระบบ:
anapon   pts/1        2025-08-27 17:17
ความพยายามเข้าสู่ระบบที่ล้มเหลว:
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
