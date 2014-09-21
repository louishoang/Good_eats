class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all.order(created_at: :desc).limit(10)
  end
end
