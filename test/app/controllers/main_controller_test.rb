require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/main" do
  before do
    get "/main"
  end

  it "should return hello world text" do
    assert_equal "Hello World", last_response.body
  end
end
