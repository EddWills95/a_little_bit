require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Author Model" do
  it 'can construct a new instance' do
    @author = Author.new(full_name: "Albert Einstein")
    refute_nil @author
  end
end
