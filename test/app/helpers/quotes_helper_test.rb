require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "ALittleBit::App::QuotesHelper" do
  before do
    @helpers = Class.new
    @helpers.extend ALittleBit::App::QuotesHelper
  end

  def helpers
    @helpers
  end

  it "should return nil" do
    assert_nil helpers.foo
  end
end
