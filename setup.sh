# Clone repositories

read -p "Enter password: " passmepass
passwrd=":""$passmepass""@"
noclone='I-am-New-To-Bug-Bounty|Saved-Games'
cat README.md  | egrep -v $noclone |  awk -F '(' '{print $2}' | awk -F ')**' '{print $1}' | sort -u | while read repository
do
	if [ ! -z "$repository" ]; then
		echo "$repository"".git" | sed s/'github.com'/'machinexa2:@github.com'/g | sed s/':@'/$passwrd/g
	fi
done
bash .mycomputer.data 

# Setup Kali

cd My-Knowledge/KaliSetup/
cat apt.data | bash
cat pip.data | bash
cat tool.data | bash
