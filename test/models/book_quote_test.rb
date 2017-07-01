require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "BookQuote Model" do
  it 'can construct a new instance' do
    @book_quote = BookQuote.new
    refute_nil @book_quote
  end
end
