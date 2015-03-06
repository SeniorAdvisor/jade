require 'sprockets'
require 'sprockets/engines'

module Jade
  class Engine < Rails::Engine
    initializer "jade.configure_rails_initialization", :group => :all do |app|
      next unless app.config.assets.enabled
      env = app.assets || Sprockets
      env.register_engine '.jade', ::Jade::Template
    end
  end
end
