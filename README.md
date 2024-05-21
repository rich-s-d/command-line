# command_line
Cheat Sheet for command line interfaces.

## Linux
```
PS1="\[\033[s\033[0;0H\033[0;41m\033[K\033[1;33m\t\033[0m\033[u\]<\u@\h\W>\$ "

# for .bashrc
PS1="\[\033[1;35m\]<\u@\h \w> \$\[\033[0m\]"
export PS1
alias ll="ls -lah"

vi filename (https://www.guru99.com/the-vi-editor.html)
sudo cat /var/lib/jenkins/secrets/initialAdminPassword (read contents of file)

export PATH="$PATH:/home/shane/aws-live/master/bin"

To create a symbolic link navigate to the directory you want the link and run the following placing the path where ../../original.tf is.
ln -s ../../original.tf .

which bash
cat test.txt | sort | uniq -c
cat two_cities.txt | grep "Charles Darnay\|Sydney Carton" | wc -l
cat test.txt | cut -d " " -f 3 | sort | uniq -c
cat soccer_scores.csv | cut -d "," -f 2 | tail -n +2 | sort | uniq -c (concatenate, cut on delimter of comma, take 2nd field of cut, take the tail of the file starting from second row to avoid headers, sort, and return a unique count).
cat soccer_scores.csv | sed 's/Cherno/Cherno City/g' | sed 's/Arda/Arda United/g' > soccer_scores_edited.csv (replace Cherno with Cherno City - sed has the format s/pattern/change/g where the pattern is replaced with change) and pipe the output to a new file using >. >> adds to end of file, wheras > will overwrite contents of an existing file.
# There are three streams in bash, stdin, stdout, and stderr.
2> /dev/null (redirects stderr to /dev/null, a device that deletes the stream directed to it.
1> /dev/null (would therefore direct the stdout to be deleted.

# Echo the first and second ARGV arguments
echo $1
echo $2
# Echo out the entire ARGV array
echo $@
# Echo out the size of ARGV
echo $#
cat hire_data/* | grep "$1" > "$1".csv (concatenate all files in hire_data dir, pipe to grep with the pattern of script argument 1, and pipe to a new csv file with the argument as the name).

echo "Right now it is `date`" (shell within a shell)

echo "scale=3;10/3" | bc (use bc for floating point numbers)
echo expr 3 + 1 (use expr for integers), or double bracket notation, e.g., echo $((3 + 1))






```
## git
.gitignore: https://linuxize.com/post/gitignore-ignoring-files-in-git/
git reset (unstage everything added locally)
```
git rebase origin/master
git status
# resolve conflicts
git add # as required
git rm # as required
# once resolved, added and removed
git rebase --continue
git push -f

git submodule update --init
```
"The submodule update command will recurse into the registered submodules, update and init (if required) them and any nested submodules within. foreach will evaluate the command in each checked out submodule. So it will update and init (if required) each submodule and any nested submodules within due to --recursive." -Stack Overflow

```
# tagging
git tag # list tags
git tag -a v3.7.2 -m "Add CreateLogStream policy to gis-backend role" # create annotated tag. can also use a lightweight.
git push --tags
```
link local project to new empty github repo:
```
git remote add origin [copied web address]
```
## Angular
```
npm install
npm start

```
## AWS
To assume role after logging into aws-adfs with a profile called "dev":
```
export AWS_PROFILE = "dev"
aws sts assume-role --role-arn "REPLACE WITH ARN" --role-session-name AWSCLI-Session
```
## Go
go get <Import path of package> will not update an existing installation, instead run:
```
go get -u github.com/terraform-docs/terraform-docs@v0.13.0
```

## Apache Tomcat/Geoserver
in tomcats bin start with:
```
sudo ./startup.sh
chmod +x shutdown.sh  if file not found error
```
shut down with
```
sudo ./shutdown.sh
```
