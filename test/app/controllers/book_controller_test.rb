require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

DatabaseCleaner.strategy = :truncation


describe "/book" do
  before do
    DatabaseCleaner.clean
    Book.create(title: "Wind in the Willows", pages: 300)
  end

  it "should return name of book" do
    get "/book"
    assert_match "Wind in the Willows", last_response.body
  end
end

describe "create book" do
  before do 
    DatabaseCleaner.clean
    post "/book/create", title: "Wind in the Willows", pages: "300"
  end

  it "should create a new book" do
    Book.all.count.must_equal 1
  end
end

describe "delete book" do
  before do
    DatabaseCleaner.clean
    Book.create(title: "Wind in the Willows", pages: 300)
  end

  it "deletes a book by id" do
    delete "/book/destroy/1"
    Book.all.count.must_equal 0
  end

end