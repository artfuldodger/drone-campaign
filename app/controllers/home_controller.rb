class HomeController < ApplicationController
  def index
    @caucus_states = State.with_representative.order(:abbreviation).uniq
  end
end
