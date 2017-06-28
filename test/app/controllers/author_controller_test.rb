require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/author/0" do
  before do
    Author.create(first_name: "Albert", last_name: "Einstein")
  end

  it "should return name of author" do
    assert_match "Albert Einstein", last_response.body
  end
end


  # before do
  #   get "/author"
  #   Author.create(first_name: "Albert", last_name: "Einstein")
  # end

  # it "should return hello world text" do
  #   assert_equal "Hello World", last_response.body
  # end
