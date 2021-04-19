require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.find_by(name: 'Jaim') }
  subject do
    Article.new(id: 5, author_id: user.id, title: 'Profiterol', text: 'Delicious profiterols',
                image: 'www.image.com/img.jpg', all_categories: 'dessert')
  end

  it 'validates presence of all fields for article' do
    expect(subject).to be_valid
  end
  it 'rejects if title not present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it 'rejects if text not present' do
    subject.text = nil
    expect(subject).to_not be_valid
  end
  it 'rejects if image not present' do
    subject.image = nil
    expect(subject).to_not be_valid
  end
  it 'rejects if category not present' do
    subject.category_ids = nil
    expect(subject).to_not be_valid
  end

  it { should belong_to(:author) }
  it { should have_many(:article_categories) }
  it { should have_many(:categories) }
  it { should have_many(:votes) }
end
