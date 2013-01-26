class RepresentativesController < ApplicationController
  def index
    if params[:state_id]
      @representatives = State.find(params[:state_id]).representatives
    else
      @representatives = Representative.all
    end

    render json: @representatives
  end
end
