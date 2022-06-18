setp1(){
   echo "Mode(Pleace use Administrator/root runinng)"
   echo "0: upgrade System"
   echo "1: Install Nginx"
   echo "2: Install PHP"
   echo "3: Install PHP_FPM"
   echo "4: Set Firewall"
   echo "5: Install DataBase"
   echo "6: Install phpmyadmin"
}

#主程式
clear
echo "LNMP Installer" 
echo "--------------------"
setp1
echo "--------------------"
echo "Input You are Number:"
read save_var
if [ $save_var == 0 ]; then
   sh ./00_upgrade.sh
elif [ $save_var == 1 ]; then
   sh ./01_nginx.sh
elif [ $save_var == 2 ]; then
   sh ./02_php.sh
elif [ $save_var == 3 ]; then
   sh ./03_php_fpm.sh
elif [ $save_var == 4 ]; then
   sh ./04_firewall_rules.sh
elif [ $save_var == 5 ]; then
   sh ./05_db.sh
elif [ $save_var == 6 ]; then
   sh ./06_phpmyadmin.sh
else 
   echo "Pleace try Ture a number!"
fi
  