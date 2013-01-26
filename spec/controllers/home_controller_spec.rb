require 'spec_helper'

describe HomeController do
  describe 'a GET to :index' do
    it 'renders' do
      get :index
      response.should render_template :index
    end

    it 'assigns to @caucus_states' do
      caucus_states = mock
      State.stub_chain(:with_representative, :order, :uniq).and_return(caucus_states)
      get :index
      assigns(:caucus_states).should == caucus_states
    end

    it 'assigns to @signature' do
      get :index
      assigns(:signature).should be_a_new Signature
    end
  end
end
