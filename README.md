# 🐧 Linux Web Server Administration Lab

Welcome to your hands-on Linux server lab! You have full **root access** to an Ubuntu 22.04 server.

## 🎯 Your Task

Configure a production-ready web server with the following requirements:

### ✅ Requirements
1. **Install and configure Apache2** – Ensure it starts on boot
2. **Create a virtual host** for `cybexplore.local` with its own document root
3. **Configure firewall** – Allow only HTTP (80), HTTPS (443), and SSH (22)
4. **Set up basic authentication** – Password-protect `/admin` directory
5. **Enable HTTPS** – Create a self-signed SSL certificate
6. **Monitor server** – Set up log rotation and health checks

## 📚 Commands to Get Started

```bash
# Update your server
sudo apt update && sudo apt upgrade -y

# Check Apache status
sudo systemctl status apache2

# Test your configuration
sudo apache2ctl configtest

# Restart Apache after changes
sudo systemctl restart apache2