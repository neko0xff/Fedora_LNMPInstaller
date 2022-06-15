setp1(){
   echo "Install Nginx"
   dnf install nginx -y
   echo "Enable Nginx Web Server"
   systemctl enable nginx --now
} 
setp2(){
   echo "Check Nginx Version"
   nginx -v
} 

# 主程式
echo "Insting&Set Nginx"
echo "-----Start Runinng-----"
setp1
setp2
echo "-----End Scrpit-----"
echo "Start a Service,Pleace See http://(your hostname or IP address):80"