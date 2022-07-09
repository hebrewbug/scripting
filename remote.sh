#dowmload file and save it localy
scp username@server:path/to/file destination_path

#copy file to the remote server
scp -r /local/dir username@server:/remote/dir


#uploading from local to the remote server with the new filename
scp file.txt username@server:/remote/dir/newfilename.txt


#coping file between remote servers
scp user1@server1:/dir1/file.txt user2@server2:/dir2
