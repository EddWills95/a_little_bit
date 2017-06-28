ALittleBit::App.controllers :author do

  layout :header_footer 

  get :index do
    @authors = Author.all
    render 'index'
  end

  get :index, :with => :id do
    @author = Author.find(params[:id])
    render 'author'
  end

  post :index, :with => '/create' do
    binding.pry
    Author.create(params["author"])
    render url_for(:author, :index)
  end
end
