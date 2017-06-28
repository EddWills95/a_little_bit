ALittleBit::App.controllers :author do

  layout :header_footer 

  get :index do
    @authors = Author.all
    render 'index'
  end

  post :create do
    t = Author.new(params[:author])
    if t.save 
      redirect url_for(:author, :index)
    else
      redirect url_for(:author, :new)
    end
      
  end

  get :new do 
    @author = Author.new
    render 'new'
  end 

  get :index, :with => :id do
    @author = Author.find(params[:id])
    render 'author'
  end


end
