# command_line
Cheat Sheet for command line interfaces.

## Linux
```
vi filename (https://www.guru99.com/the-vi-editor.html)
sudo cat /var/lib/jenkins/secrets/initialAdminPassword (read contents of file)

export PATH="$PATH:/home/shane/aws-live/master/bin"

To create a symbolic link navigate to the directory you want the link and run the following placing the path where ../../original.tf is.
ln -s ../../original.tf .

which bash
cat test.txt | sort | uniq -c
cat two_cities.txt | grep "Charles Darnay\|Sydney Carton" | wc -l
cat test.txt | cut -d " " -f 3 | sort | uniq -c


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
