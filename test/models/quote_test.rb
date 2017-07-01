require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Quote Model" do
  it 'can construct a new instance' do
    @quote = Quote.new
    refute_nil @quote
  end
end
