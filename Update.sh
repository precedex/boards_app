#! /bin/bash
bundle exec rake assets:precompile
git status
git add .
git commit -m "adjustments"
git push
git push heroku master --app anesthesiahub
heroku pg:reset HEROKU_POSTGRESQL_MAROON --confirm anesthesiahub
heroku pg:push pg_database_development HEROKU_POSTGRESQL_MAROON