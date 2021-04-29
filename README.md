# command_line
Cheat Sheet for command line interfaces.

## Linux
vi filename (https://www.guru99.com/the-vi-editor.html)
sudo cat /var/lib/jenkins/secrets/initialAdminPassword (read contents of file)

## git
.gitignore: https://linuxize.com/post/gitignore-ignoring-files-in-git/
git reset (unstage everything added locally)

```
git submodule update --init
```
"The submodule update command will recurse into the registered submodules, update and init (if required) them and any nested submodules within. foreach will evaluate the command in each checked out submodule. So it will update and init (if required) each submodule and any nested submodules within due to --recursive." -Stack Overflow

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
