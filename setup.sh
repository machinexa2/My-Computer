CURRENT="`pwd`"
mkdir Softwares 2>/dev/null
read -p "Enter password: " passmepass

github_password=":""$passmepass""@"
zopiclone='I-am-New-To-Bug-Bounty|Saved-Games'

cat README.md  | egrep -v $zopiclone |  awk -F '(' '{print $2}' | awk -F ')**' '{print $1}' | sort -u | while read repository
do
	if [ ! -z "$repository" ]; then
		git clone `echo "$repository"".git" | sed s/'github.com'/'machinexa2:@github.com'/g | sed s/':@'/$github_password/g`
	fi
done
cd My-Knowledge/KaliSetup/
	bash apt.data
	bash pip.data
	bash tool.data
cd $CURRENT
bash extra.sh
