require 'rails_helper'
require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "ArtistTest" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://localhost:3000/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end

  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end

  it "test_artist" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "get-playlist").click
    @driver.find_element(:id, "select-playlist").clear
    @driver.find_element(:id, "select-playlist").send_keys "Adele"
    @driver.find_element(:id, "get-playlist").click
  end

  it "test_activity" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "get-playlist").click
    @driver.find_element(:id, "select-playlist").clear
    @driver.find_element(:id, "select-playlist").send_keys "workout"
    @driver.find_element(:id, "get-playlist").click
  end

  it "test_mood" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "get-playlist").click
    @driver.find_element(:id, "select-playlist").clear
    @driver.find_element(:id, "select-playlist").send_keys "chill"
    @driver.find_element(:id, "get-playlist").click
  end

  it "test_genre" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "get-playlist").click
    @driver.find_element(:id, "select-playlist").clear
    @driver.find_element(:id, "select-playlist").send_keys "rock"
    @driver.find_element(:id, "get-playlist").click
  end


  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end


end
