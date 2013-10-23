require 'rake_heroku'
require 'rails'

module RakeHeroku
  class Railtie < Rails::Railtie
    rake_tasks do
      require 'tasks/clone.rake'
    end
  end
end