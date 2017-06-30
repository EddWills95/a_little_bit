ALittleBit::App.controllers :book do
  
  layout :header_footer 
  
  get :index do
    @books = Book.all
    render 'index'
  end

  get :new do
    @authors = Author.all
    @book = Book.new
    render 'new'
  end

  get :index, :with => :id do
    @authors = Author.all
    @book = Book.find(params[:id])
    render 'book'
  end

  post :create do
    t = Book.new(params[:book])
    if t.save 
      redirect url_for(:book, :index)
    else
      redirect url_for(:book, :new)
    end
  end

  delete :destroy, :with => :id do
    @book = Book.find(params[:id])
    @book.delete
  end

  put :update, :with => :id do

    @book = Book.find(params[:id])
    @book.update(params[:book])
    redirect '/book'
  end

end
