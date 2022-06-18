setp1(){
   echo "Insting phpmyAdmin"
   dnf -y install phpMyAdmin php-mysqlnd php-mcrypt php-php-gettext
   ln -s /usr/share/phpMyAdmin /usr/share/nginx/html/
   systemctl restart nginx
   chmod 777 /var/lib/phpMyAdmin/temp
   chmod 777 /var/lib/php/session
   chown nginx:nginx -R /var/lib/php/session
}
setp2(){
   echo "Set SELinux"
   setsebool -P httpd_can_network_connect on
   setsebool -P httpd_execmem on 
}
setp3(){
   echo "Set Database(Pleace Using root Login)"
   echo "Create phpmyadmin Database"
   echo "----- Login -----"
   mysql -u root -p -e "CREATE database phpmyadmin;"
   echo "Create Login phpmyadmin a user"
   echo "----- Login -----"
   mysql -u root -p -e "CREATE USER 'master'@'localhost' IDENTIFIED BY 'AA10bb17';" 
   echo "Add Save/Read DataBase a user contrl"
   echo "----- Login -----"
   mysql -u root -p -e "Grant All Privileges On *.* To master@localhost Identified By 'AA10bb17' With Grant Option;"
   echo "Reload All Set"
   echo "----- Login -----"
   mysql -u root -p -e "FLUSH PRIVILEGES;"
   echo "------------------------"
   echo "Show All DataBase"
   echo "----- Login -----"
   mysql -u root -p -e "SHOW DATABASES;"
}

# 主程式
echo "Install&Set phpMyAdmin"
echo "-----Start Runinng-----"
setp1
setp2
setp3
echo "-----End Scrpit-----"
echo "phpMyAdmin Deafult: Login=master Password=AA10bb17"
echo "See to http://(your hostname or IP address):80/phpMyAdmin/"