require 'rails_helper'
require 'spec_helper'

describe Seven, type: :model do
  it { is_expected.to have_many :reviews }

end
