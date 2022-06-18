setp1(){
   echo "Change php-fpm Service for Nginx"
   cp /etc/php-fpm.d/www.conf /etc/php-fpm.d/www.conf.bck
   cp ./conf/www.conf /etc/php-fpm.d/www.conf
}
setp2(){
   echo "Edit Nginx conf"
   cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bck
   cp ./conf/nginx.conf /etc/nginx/nginx.conf
   mkdir -p /etc/nginx/sites-available
}
setp3(){
   echo "Add PHP test Page"
   mkdir -p /var/www/html/example.com
   cp ./conf/index.php /var/www/html/example.com
   cp ./conf/info.php /usr/share/nginx/html/
   cp ./conf/php.ini /etc/php.ini
   #echo '<?php phpinfo(); ?>' > /var/www/html/info.php 
   chown -R nginx:nginx /var/lib/php/session/
}
setp4(){
   echo "Restart Web Service"
   systemctl enable --now php-fpm 
   systemctl restart nginx
   nginx -t
}

# 主程式
echo "Install&Set PHP-fpm"
echo "-----Start Runinng-----"
setp1
setp2
setp3
setp4
echo "-----End Scrpit-----"
echo "See to http://(your hostname or IP address):80/info.php"
 
