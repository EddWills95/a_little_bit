require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "ALittleBit::App::AuthorHelper" do
  before do
    @helpers = Class.new
    @helpers.extend ALittleBit::App::AuthorHelper
  end

  def helpers
    @helpers
  end

end
