require 'rails_helper'

describe Beer do
  it 'has a name' do
    beer = Beer.create name: 'Heineken'

    expect(beer.name).to eq('Heineken')
  end
  it 'requires a name' do
    beer = Beer.new

    expect(beer.valid?).to eq(false)
    expect(beer.errors).to include(:name)
  end
end