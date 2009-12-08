require File.dirname(__FILE__) + '/spec_helper'
require 'spec'
require 'rack/test'

describe "Application" do
    include Rack::Test::Methods
    
    describe "loading the root url" do
      before(:all) do
        get "/"
      end
      
      it "should responsd with the index template" do
        last_response.ok?.should be true
        last_response.body.should match "Quick Schedule"
      end
      
      it "should use the application template" do
        last_response.body.should match "Schedule Generator"
      end
            
    end
    
end