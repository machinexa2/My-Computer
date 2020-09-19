read -p "Enter password: " passmepass
passwrd=":""$passmepass""@"
cat README.md  | awk -F '(' '{print $2}' | awk -F ')**' '{print $1}' | sort -u | while read repository
do
	echo "$repository"".git" | sed s/'github.com'/'machinexa2:@github.com'/g | sed s/':@'/$passwrd/g
done
