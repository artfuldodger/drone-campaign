require 'spec_helper'

describe HomeController do
  describe 'a GET to :index' do
    it 'renders' do
      get :index
      response.should render_template :index
    end
  end
end
