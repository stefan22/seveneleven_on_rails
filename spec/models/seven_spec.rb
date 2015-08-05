require 'rails_helper'
require 'spec_helper'

describe Seven, type: :model do
  it { is_expected.to have_many :reviews }

  it 'is not valid with a nmae of less than three characters' do
    seven = Seven.new(name: 'Re')
    expect(seven).to have(1).error_on(:name)
    expect(seven).not_to be_valid
  end

end
