require 'rails_helper'

describe Beer do
  it 'has a name' do
    beer = Beer.create name: 'Heineken'
    expect(beer.name).to eq('Heineken')
  end
end