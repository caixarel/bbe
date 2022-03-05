class UsersController < ApplicationController
  def index
    @favourites = Favourite.all
  end
end
