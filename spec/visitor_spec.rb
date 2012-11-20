require 'spec_helper'

describe GenericVisitor::Visitor do

  it 'Visit' do
    country = Country.new('Argentina')
    city = City.new('Bs.As.', country)

    hash = city.as_hash

    hash[:name].should eq 'Bs.As.'
    hash[:country][:name].should eq 'Argentina'
  end

end