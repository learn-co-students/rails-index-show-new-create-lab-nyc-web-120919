class CouponsController < ApplicationController
  
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def edit
    @coupon = Coupon.find(params[:id])
  end

  def update
    @coupon = Coupon.find(params[:id])
    @coupon.update(coupon_params)
    redirect_to coupons
  end

  def delete
    @coupon = Coupon.find(params[:id])
    @coupon.destroy
    redirect_ro coupons_path
  end

  private
  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
