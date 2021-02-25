shopt -s expand_aliases
source /root/.bash_aliases
current="`pwd`"
cat .gitignore | while read repository
do
	cd $repository 2>/dev/null && gitted
	cd $current
done
