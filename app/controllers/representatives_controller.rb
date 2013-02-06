class RepresentativesController < ApplicationController
  def index
    if params[:state_id]
      @representatives = State.find(params[:state_id]).representatives
    elsif params[:zip]
      @representatives = Congress::RepresentativeSearch.new(params).results
    else
      @representatives = Representative.all
    end

    render json: @representatives
  end
end
