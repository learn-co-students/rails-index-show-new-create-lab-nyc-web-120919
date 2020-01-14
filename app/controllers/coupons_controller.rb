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
        @new_coupon = Coupon.new
        @new_coupon.coupon_code = params["coupon"]["coupon_code"]
        @new_coupon.store = params["coupon"]["store"]
        @new_coupon.save
        redirect_to coupon_path(@new_coupon)
    end
end