require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    # http://localhost:3000/flats/3
    flat_id = params[:id].to_i
    @flat = @flats.find { |flat| flat["id"] == flat_id }
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    response = open(url).read
    @flats = JSON.parse(response)
  end



end
