require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/" do
  before do
    get "/"
  end

  it "should return a little bit (of text)" do
    assert_match "a Little Bit", last_response.body
  end
end


