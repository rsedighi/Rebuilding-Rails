require 'test_helper'

class TestController < Rulers::Controller
  def index
    "Hello!"
  end
end

class TestApp < Rulers::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class RulersAppTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/quotes/a_quote"

    assert last_response.ok?
    body = last_response.body
    assert body ["Hello"]
  end
end
