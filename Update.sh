#! /bin/bash
bundle exec rake assets:precompile
git status
git add .
git commit -m "adjustments"
git push 
git push heroku master

heroku pg:reset HEROKU_POSTGRESQL_MAROON --confirm anesthesiahub --app anesthesiahub
heroku pg:push pg_database_development HEROKU_POSTGRESQL_MAROON --app anesthesiahub
