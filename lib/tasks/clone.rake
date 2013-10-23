namespace :heroku do

  desc "create a clean database copy from one heroku app to another"
  task "clone" do
    if ENV['from'].blank? || ENV['to'].blank?
      puts "Usage: rake heroku:clone from=[app_name] to=[app_name]"
      exit
    end

    sh "heroku pgbackups:capture --expire --app #{ENV['from']}"
    if ENV['to'] == 'local'
      db = ENV['db']
      sh "rake db:reset"
      sh "curl -o latest.dump `heroku pgbackups:url --app #{ENV['from']}`"
      sh "pg_restore --verbose --clean --create --no-owner -h localhost #{"-d #{db}" if db} latest.dump"
    else
      reset = "heroku pg:reset DATABASE_URL --app #{ENV['to']}"
      reset += " --confirm #{ENV['to']}" if ENV['force'] == 'true'
      sh reset
      url = "heroku pgbackups:url --app #{ENV['from']}"
      restore = "heroku pgbackups:restore DATABASE_URL `#{url}` --app #{ENV['to']}"
      restore += " --confirm #{ENV['to']}" if ENV['force'] == 'true'
      sh restore
    end
  end

end