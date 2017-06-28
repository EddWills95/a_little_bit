require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/" do
  before do
    get "/"
  end

  it "should return hello world text" do
    assert_match "a Little Bit", last_response.body
  end
end

describe "/author" do 
  before do 
    post "/"
  end

  it "should create a new author" do
    assert 
  end
end
