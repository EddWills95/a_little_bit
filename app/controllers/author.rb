ALittleBit::App.controllers :author do

  layout :header_footer 

  get :index do
    @authors = Author.all
    render 'index'
  end

  post :index do
    binding.pry
    Author.create(params["author"])
    render 'index'
  end

  get :index, :with => :id do
    @author = Author.find(params[:id])
    render 'author'
  end


end
