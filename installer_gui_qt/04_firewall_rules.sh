setp1(){
   echo "ADD: Web Service"
   firewall-cmd --add-service=http --permanent
   firewall-cmd --add-service=https --permanent
   echo "ADD: Data Base"
   firewall-cmd --add-service=mysql --permanent 
}
setp2(){
   echo "Reload rules a Firewall"
   firewall-cmd --reload
}

echo "Set Firewall"
echo "-----Start Runinng-----"
echo "Add a rules in Firewall"
setp1
setp2
echo "-----End Scrpit-----"