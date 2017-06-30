ALittleBit::App.controllers :main do
  
  layout :header_footer

  get :index, :map => '/' do
    @books = Book.all
    render 'home'
  end 

  get :product, :map => '/product' do
    render 'product'
  end 

end
1