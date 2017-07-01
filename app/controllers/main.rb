ALittleBit::App.controllers :main do
  
  layout :header_footer

  get :index, :map => '/' do
    @books = Book.all
    render 'home'
  end 
  
  get :index, :map => '/', :with => :id do 
    @product = Book.find(params[:id])
    render 'product'
  end

end