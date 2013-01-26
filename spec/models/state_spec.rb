require 'spec_helper'

describe State do
  it { should have_many :representatives }
  it { should validate_presence_of :name }
  it { should validate_presence_of :abbreviation }

  describe '.with_representative' do
    it 'only returns states with representatives' do
      included = FactoryGirl.create(:state)
      excluded = FactoryGirl.create(:state)
      FactoryGirl.create(:representative, :state => included)

      State.with_representative.should == [included]
    end
  end
end
