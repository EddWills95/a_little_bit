ALittleBit::App.controllers :main do
  
  layout :header_footer

  get :index, :map => '/' do
    render 'home'
  end  

end
