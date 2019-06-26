require 'byebug'
require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'pry'
require 'allure-cucumber'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

Dir[File.join(File.dirname(__FILE__),
              '../services/*_services.rb')].each { |file| require_relative file }

Cucumber::Core::Test::Step.module_eval do
   def name
     return text if text == 'Before hook'
     return text if text == 'After hook'
        "#{source.last.keyword}#{text}"
   end
   end
            
AllureCucumber.configure do |c|
   c.output_dir = "/output/dir"
   end
         
AllureCucumber.configure do |c|
   c.clean_dir  = false
   end