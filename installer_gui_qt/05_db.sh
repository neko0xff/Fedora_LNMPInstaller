setp1(){
   echo "Install DataBase"
   dnf install mariadb-server mariadb -y
}
setp2(){
   echo "Enable DataBase Service"
   systemctl enable --now mariadb
}
setp3(){
   echo "Check MariaDB  Version"
   mariadb --Version
}
setp4(){
   echo "Start Secure a Installation"
   mariadb-secure-installation
}

# 主程式
echo "Install&Set Database"
echo "-----Start Runinng-----"
setp1
setp2
setp3
setp4
echo "-----End Scrpit-----"