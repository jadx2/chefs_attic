require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Jaim') }

  it 'validates if name is present' do
    expect(subject).to be_valid
  end
  it 'rejects if name not present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it {
    should have_many(:articles)
  }
  it {
    should have_many(:votes)
  }
end
