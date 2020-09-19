shopt -s expand_aliases
source /root/.bash_aliases

cat .gitignore | while read repository
do
	cd $repository && gitted
	cd ..
done
