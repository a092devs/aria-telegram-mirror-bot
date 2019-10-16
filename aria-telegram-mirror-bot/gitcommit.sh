git add *
git add -f credentials.json src/.constants.js aria.sh client_secret.json
git commit -m "[HerokuGit] Update files without updating github"
git push heroku HEAD:master --force