#list all files containing the string "text"
#argument -l will show only a filenames

find . -type f -exec grep -l "text" {} \;



#replacing strings with "admin_name:admin" to 'admin_name:nikita23' in all files in the directory

find . -type f -exec grep -l "admin_name:admin" {} \; | xargs sed -i 'admin_name:nikita23'


#delete all empty files ending with .log
find . -type f -name "*.log" -exec rm {} \;

#delete all files older than 28 days
find . -type f -mtime +28 -exec rm {} \;


