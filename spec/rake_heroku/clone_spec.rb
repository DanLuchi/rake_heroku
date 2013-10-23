describe "heroku:clone from=staging to=new_server" do
  # Should output the following to your shell
  # heroku pgbackups:capture --expire --app staging
  # heroku pg:reset DATABASE_URL --app new_server
  # heroku pgbackups:restore DATABASE_URL `heroku pgbackups:url --app staging` --app new_server
end

describe "heroku:clone from=staging to=new_server force=true" do
  # Should output the following to your shell
  # heroku pgbackups:capture --expire --app staging
  # heroku pg:reset DATABASE_URL --app new_server --confirm new_server
  # heroku pgbackups:restore DATABASE_URL `heroku pgbackups:url --app staging` --app new_server --confirm new_server
end

describe "heroku:clone from=staging to=local" do
  # Should output the following to your shell
  # heroku pgbackups:capture --expire --app staging
  # rake db:reset
  # curl -o latest.dump `heroku pgbackups:url --app staging`
  # pg_restore --verbose --clean --create --no-owner -h localhost latest.dump
end

describe "heroku:clone from=staging to=local db=my_development" do
  # Should output the following to your shell
  # heroku pgbackups:capture --expire --app staging
  # rake db:reset
  # curl -o latest.dump `heroku pgbackups:url --app staging`
  # pg_restore --verbose --clean --create --no-owner -h localhost -d my_development latest.dump
end

describe "heroku:clone from=staging" do
  # ERROR: to= must be specified
end

describe "heroku:clone to=local" do
  # ERROR: from= must be specified
end

