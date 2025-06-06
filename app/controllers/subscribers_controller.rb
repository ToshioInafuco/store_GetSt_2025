class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_product

  def create
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def subscriber_params
    params.expect(subscriber: [ :email ])
  end
end
