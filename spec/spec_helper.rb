require File.join(File.dirname(__FILE__), '..', 'youker.rb')

require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'spec/interop/test'
require 'mocha'
require 'shoulda'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
def app
   Sinatra::Application
 end