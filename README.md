# Rake Heroku #

A collection of useful scripts for interacting with heroku deployed rails applications.

## Installation ##

Eventually you will be able to add this in your Gemfile, like so:

```ruby
gem 'rake_heroku'
```

But for now, just copy the rake tasks into your lib/tasks folder.

## Tasks ##

Clone a database from one server to another:

```ruby
rake heroku:clone_db from=[SERVER_NAME] to=[SERVER_NAME]
```

or to your local development environment:
```ruby
rake heroku:clone_db from=[SERVER_NAME] to=local
```