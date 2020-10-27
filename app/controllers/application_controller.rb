class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart
  
  def cart 
    cart = session[:cart] || []
    session[:cart] = cart
  end

  #def index 
  #  if params[:cart_id] && !Cart.exists?(params[:cart_id])
  #    redirect_to carts_path
  #  else
  #    @cart = Cart.new(cart_id: params[:cart_id])
  #  end
  #end 

  #def add_to_cart
  #  # Get the item from the path
  #  @item = Item.find(params[:id])
  # 
  #  # Load the cart from the session, or create a new empty cart.
  #  current_cart << @item.id
  #end
  
end
