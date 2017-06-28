require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation


describe "/author" do
  before do
    DatabaseCleaner.clean
    Author.create(first_name: "Albert", last_name: "Einstein")
  end

  it "should return name of author" do
    get "/author/1"
    assert_match "Albert Einstein", last_response.body
  end
end

describe "create author" do
  before do 
    DatabaseCleaner.clean
    post "/author/create", first_name: "Edd", last_name: "Williams"
  end

  it "should create a new author" do
    Author.all.count.must_equal 1
  end
end
