require "rake_heroku/version"

module RakeHeroku
  require 'rake_heroku/railtie' if defined?(Rails)
end
