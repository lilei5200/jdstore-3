class Admin::OrdersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :adin_required


   def index
     @orders = Order.order("id DESC")
   end
   
end
