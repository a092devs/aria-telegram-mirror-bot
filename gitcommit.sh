git add *
git commit -m "[ShellPush] Commited from shell file"
git push origin master

cd aria-telegram-mirror-bot/
git add *
git add -f credentials.json src/.constants.js aria.sh client_secret.json
git commit -m "[HerokuGit] Update files"
git push heroku HEAD:master --force
