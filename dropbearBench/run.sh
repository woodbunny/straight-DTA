for i in 1 2 3
do
	echo $i
	scp ../genFile/file_1MB root@130.203.157.226:/root/file_1MB
	scp ../genFile/file_5MB root@130.203.157.226:/root/file_5MB
	scp ../genFile/file_10MB root@130.203.157.226:/root/file_10MB
	scp ../genFile/file_20MB root@130.203.157.226:/root/file_20MB
	scp ../genFile/file_50MB root@130.203.157.226:/root/file_50MB
	scp ../genFile/file_100MB root@130.203.157.226:/root/file_100MB
done
