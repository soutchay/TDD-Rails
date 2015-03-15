require 'rails_helper'

describe Beer do
  it 'has a name' do
    beer = described_class.create name: 'Heineken'

    expect(beer.name).to eq('Heineken')
  end
  it 'requires a name' do
    beer = described_class.new

    expect(beer.valid?).to eq(false)
    expect(beer.errors).to include(:name)
  end
end