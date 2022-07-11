tail -n 100 /var/log/httpd/access_log
# showing last 100 strings of the file

cat tomcat.log | grep org.apache.catalina.startup.Catalina.start


# status of the running processes
ps -ef

ps -ef | grep tomcat


# enviroment information
env

# debuging processes that utilize CPU or memory
top


#network/ports!!!
netstat -tulpn


ip address show eth0

# lsof lists the open files associated with application
lsof -i tcp:80

#by PID 18311
lsof -D 18311

#display free disk space(to troubleshoot disk issues
df -h

#limited by one directory
df -h /home

# retrieving more detailed information about which files use the disk space in a directory
du -sh /var/log/*
#-h (human-readable) option, the -s option for the total size

#showing which user use this application
dnf -y install httpd
# output: you are not allowed to perform this command. So you need to use id to check who are allowed
id

chmod +x test.sh

#try using dig (DNS lookup utility) or nslookup (query Internet name servers) to figure out why the application can't seem to resolve the database
nslookup mydatabase
dig mydatabase

