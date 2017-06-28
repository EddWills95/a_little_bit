ALittleBit::App.controllers :author do
  
  get :index do
    @authors = Author.all
    render 'index'
  end

  get :index, :with => :id do
    @author = Author.find(params[:id]);
    render 'author'
  end
end
