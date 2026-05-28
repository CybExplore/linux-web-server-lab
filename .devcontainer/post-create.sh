#!/bin/bash

# Update package list
sudo apt update

# Install Apache and useful tools
sudo apt install -y apache2 apache2-utils ufw fail2ban

# Create sample web directory
sudo mkdir -p /var/www/cybexplore/public_html
sudo chown -R $USER:$USER /var/www/cybexplore/public_html

# Create a sample index.html
echo "<html><body><h1>Welcome to CybExplore Linux Lab!</h1><p>Your web server is working!</p></body></html>" | \
    sudo tee /var/www/cybexplore/public_html/index.html

# Enable Apache modules
sudo a2enmod rewrite
sudo a2enmod ssl

# Start Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Display success message
echo "=========================================="
echo "✅ Linux Web Server Lab Ready!"
echo "🌐 Web Server: http://localhost:80"
echo "📁 Document Root: /var/www/html"
echo "=========================================="