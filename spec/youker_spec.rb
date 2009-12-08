require File.dirname(__FILE__) + '/spec_helper'
require 'spec'
require 'rack/test'

describe "Application" do
    include Rack::Test::Methods
    
    
    it "should respond with ok" do
      get "/"
      last_response.ok?.should be true
      last_response.body.should match "Quick Schedule"
    end
    
end