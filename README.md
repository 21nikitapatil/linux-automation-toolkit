# Linux Automation Toolkit – System Admin Utilities

A collection of simple Bash scripts to automate common system administration tasks on a Linux machine.

## 🔧 Features

- **Automated Backups**: Archives your Documents folder to a timestamped backup in `~/backups`.
- **Log Cleanup**: Deletes `.log` files older than 7 days from `/var/log`.
- **System Monitoring**: Checks disk and memory usage, sends alerts if thresholds are exceeded.
- **Cron Jobs**: Set up for daily backups, weekly log cleanups, and hourly monitoring.

## 📂 Files

- `backup.sh` – Automates backup of Documents directory
- `log_cleanup.sh` – Cleans up old log files
- `monitor.sh` – Sends alert if resource usage is too high
- `crontab.txt` – Example cron schedule

## 🚀 Usage

1. Make scripts executable:
   ```bash
   chmod +x *.sh
   ```

2. Edit `monitor.sh` to add your email for alerts.

3. Add cron jobs:
   ```bash
   crontab crontab.txt
   ```

## 🛡️ Requirements

- Bash
- `mail` utility (for sending alerts)
- Root/sudo access for log cleanup

## 📌 Note

Test scripts carefully before deploying in production environments.
