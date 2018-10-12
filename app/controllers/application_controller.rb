class ApplicationController < ActionController::Base
end

# class SalesController < ApplicationController
#   def new
#     @sale = Sale.new
#   end
#   def create
#     @sale = Sale.new(post_params)
#     @sale.save
#     redirect_to sales_path
#   end
#
#
#   private
#   def post_params
#   params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax)
#   end
# end
