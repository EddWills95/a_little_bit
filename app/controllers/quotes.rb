ALittleBit::App.controllers :quotes do
  
 layout :header_footer 

  get :index do
    @quotes = Quote.all

    render 'index'
  end

  post :create do
    t = Quote.new(params[:quote])
    if t.save 
      redirect url_for(:quote, :index)
    else
      redirect url_for(:quote, :new)
    end
  end

  get :new do 
    @quote = Quote.new
    render 'new'
  end 

  get :index, :with => :id do
    @quote = Quote.find(params[:id])
    render 'Quote'
  end

  delete :destroy, :with => :id do 
    @quote = Quote.find(params[:id])
    @quote.delete

    @quotes = Quote.all
    redirect 'index' 
  end

  put :update, :with => :id do
    @quote = Quote.find(params[:id])
    @quote.update(params[:quote])

    redirect '/author' 
  end
  

end
