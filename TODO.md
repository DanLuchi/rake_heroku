Implement rake heroku:clone and test with rspec first since that seems to be more common.
Convert to minitest later once I've gotten something working.

Find some articles and examples for testing rake tasks, googling this is proving difficult

Good article from Thoughbot: http://robots.thoughtbot.com/post/11957424161/test-rake-tasks-like-a-boss
And another from Thoughbot on accepting parameters: http://robots.thoughtbot.com/post/18129303042/how-to-use-arguments-in-a-rake-task

Good article on gem development with tests: https://github.com/radar/guides/blob/master/gem-development.md

Determine standard/best configuration practices
  rails g rake_heroku:setup
  place configuration in config/initializers/rake_heroku.rb

Would Heroku Syntax be cleaner? How would that be implemented?
It would look something like this:
  heroku db:clone --from [remote] --to [remote] (--force)
  heroku apps:create [name] --config [config] --clone_db [remote] --branch [branch]