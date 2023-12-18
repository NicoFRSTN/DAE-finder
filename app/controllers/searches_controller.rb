class SearchesController < ApplicationController
  def index
    @search =
  end

  def new
    @search = Search.new

  def create
    @search = Search.new(search_params)
      if @search.save
        @user_position = FetchGeocoding.new(Search.address).call
      end
  end

  def search_params
    params.require(:address)
  end
end
