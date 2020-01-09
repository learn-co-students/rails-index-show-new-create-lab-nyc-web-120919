class CouponsController < ApplicationController
    def show
        @coupon = Coupon.find(params[:id])
    end

    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end

    def create
        input = params.require(:coupon).permit(:coupon_code, :store)
        coupon = Coupon.create(input)
        redirect_to "/coupons/#{coupon.id}"
    end
end