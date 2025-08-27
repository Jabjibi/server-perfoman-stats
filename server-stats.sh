#!/bin/bash

# ฟังก์ชันการแสดงการใช้งาน CPU
cpu_usage() {
    echo "การใช้งาน CPU:"
    top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "การใช้งาน CPU: " 100 - $1 "%"}'
}

# ฟังก์ชันการแสดงการใช้งานหน่วยความจำ
memory_usage() {
    echo "การใช้หน่วยความจำ:"
    free -h | grep Mem | awk '{print "ใช้: " $3 " / ว่าง: " $4 " / รวม: " $2 " (เปอร์เซ็นต์: " $3/$2*100 "%)"}'
}

# ฟังก์ชันการแสดงการใช้งานดิสก์
disk_usage() {
    echo "การใช้ดิสก์:"
    df -h | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $1 " ใช้: " $3 " / ว่าง: " $4 " (เปอร์เซ็นต์: " $5 ")"}'
}

# ฟังก์ชันการแสดงกระบวนการยอดนิยมตามการใช้งาน CPU
top_cpu_processes() {
    echo "5 กระบวนการยอดนิยมตามการใช้งาน CPU:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | tail -n 5
}

# ฟังก์ชันการแสดงกระบวนการยอดนิยมตามการใช้งานหน่วยความจำ
top_memory_processes() {
    echo "5 กระบวนการยอดนิยมตามการใช้งานหน่วยความจำ:"
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6 | tail -n 5
}

# ฟังก์ชันการแสดงเวอร์ชันของระบบปฏิบัติการ
os_version() {
    echo "เวอร์ชันของระบบปฏิบัติการ:"
    uname -r
}

# ฟังก์ชันการแสดงเวลาทำงานของเซิร์ฟเวอร์
uptime_info() {
    echo "เวลาทำงานของเซิร์ฟเวอร์:"
    uptime -p
}

# ฟังก์ชันการแสดงผู้ใช้ที่เข้าสู่ระบบ
logged_in_users() {
    echo "ผู้ใช้ที่เข้าสู่ระบบ:"
    who
}

# ฟังก์ชันการแสดงความพยายามเข้าสู่ระบบที่ล้มเหลว
failed_logins() {
    echo "ความพยายามเข้าสู่ระบบที่ล้มเหลว:"
    lastb | head -n 10
}

# เรียกใช้ฟังก์ชันทั้งหมด
cpu_usage
memory_usage
disk_usage
top_cpu_processes
top_memory_processes
os_version
uptime_info
logged_in_users
failed_logins
