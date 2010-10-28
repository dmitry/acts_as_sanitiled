require 'acts_as_sanitiled'
require 'rails'

module ActsAsSanitiled
  class Railtie < Rails::Railtie    
    initializer "acts_as_sanitiled.configure_rails_initialization" do
      ActiveRecord::Base.send(:include, ActsAsSanitiled)
    end
  end
end