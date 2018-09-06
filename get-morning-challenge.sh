# Script to pull the morning challenge and merge to master
# Pass the branch name as the first param, eg. ./get-morning-challenge.sh 07_fib_seq_01.rb

git branch

echo "Getting morning challenge $1 ..."
# Make sure you're on master branch
echo "checking out master"
git checkout master
# Sync master:
echo "syncing master"
git add . && git commit -m "sync master" && git push -f origin master
# checkout/create challenge branch
echo "checking out and creating challenge branch $1"
git checkout -b $1
# pull morning challenge
echo "Pulling branch $1 from morning (remote repo)"
git pull --no-edit --allow-unrelated-histories morning $1
# if any conflicts:
echo "Resolving conflicts from remote branch"
git add . && git commit -m "resolve conflicts"
# merge to your master
echo "Change back to master branch in local"
git checkout master
echo "Merge branch $1 into master"
git merge $1
echo "Push changes from local master to my remote master"
git push -f origin master
# delete the challenge branch
echo "Delete the branch $1"
git branch -d $1
echo "Done!"
ls
