require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_and_belong_to_many(:articles) }
end
