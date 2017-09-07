require_relative 'test_helper'
require 'rack/test'
require 'capybara/rails'
require 'capybara/poltergeist'

class ActionDispatch::IntegrationTest < ActiveSupport::TestCase
  include Rack::Test::Methods
  include Capybara::DSL

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, js_errors: true)
  end

  Capybara.javascript_driver = :poltergeist
end
