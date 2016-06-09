ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'wrong'
require 'rails/test_help'
require 'minitest/rails'
require 'coveralls'

Coveralls.wear!
class ActiveSupport::TestCase
  include Wrong
  include FactoryGirl::Syntax::Methods
end
