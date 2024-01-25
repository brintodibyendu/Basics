#This command will list all of your GitHub repositories sorted alphabetically by name:
alphabatically_sort=$(./githubapi-get.sh $GITHUBTOKEN /users/brintodibyendu/repos | grep '"name":' |sort)
echo $alphabatically_sort>alphabatically_sort.json


#This command will list the commit messages for commits to the repository for this workshop:
get_commit=$(./githubapi-get.sh $GITHUBTOKEN /repos/CS6704-VT/Basics-Workshop/commits | grep '"message":')
echo $get_commit>get_commit.json


