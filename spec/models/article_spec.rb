require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'tests a number to be positive' do
    expect(1).to be_positive
  end
end
