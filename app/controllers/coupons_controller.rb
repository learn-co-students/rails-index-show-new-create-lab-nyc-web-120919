class CouponsController < ActionController::Base
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.created_at = Time.now
        @coupon.updated_at = Time.now
        @coupon.save

        redirect_to coupon_path(@coupon)
    end

end