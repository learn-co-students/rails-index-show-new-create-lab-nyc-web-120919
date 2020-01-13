Rails.application.routes.draw do
  resources :coupons, only: [:index, :show, :create, :new]
  
 #  get '/', to: "coupons#index"   #index
 #  get '/coupons', to: "coupons#index", as: "coupons"   #index
 #  get '/coupons/new', to: "coupons#new", as: "new_coupon"   #new
 #  post '/coupons', to: "coupons#create"  #create
 #  get '/coupons/:id', to: "coupons#show", as: "coupon" #show 
end
