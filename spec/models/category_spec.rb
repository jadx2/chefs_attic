require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many(:article_categories) }
  it { should have_many(:articles) }
end
