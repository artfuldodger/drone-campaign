require 'spec_helper'

describe State do
  it { should validate_presence_of :name }
  it { should validate_presence_of :abbreviation }
end
