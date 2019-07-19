#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login --username emil.kaminski@hotmail.com --password=$HEROKU_API_KEY registry.heroku.com
#docker push registry.heroku.com/$HEROKU_APP_NAME/web
#heroku container:login
heroku container:push web --app $HEROKU_APP_NAME
