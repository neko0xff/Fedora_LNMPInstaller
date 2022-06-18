setp1(){
   echo "Install PHP"
   dnf install php-fpm php-cli php-opcache php-curl php-zip php-mysqlnd -y
   dnf install php-gd php-intl php-common php-bcmath php-imagick php-xmlrpc php-json php-readline php-memcached php-redis php-mbstring php-apcu php-xml php-dom php-redis php-memcached php-memcache -y
}
setp2(){
   echo "Check PHP Version"
   php -v 
}

#主程式
echo "Installing PHP"
echo "-----Start Runinng-----"
setp1
setp2
echo "-----End Scrpit-----"