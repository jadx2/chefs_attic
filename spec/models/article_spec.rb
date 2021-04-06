require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.create(id: 1, name: 'Jaim') }
  subject do
    Article.new(id: 1, author_id: user.id, title: 'Profiterol', text: 'Delicious profiterols', image: 'www.image.com')
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

  it { should belong_to(:author) }
  it { should have_and_belong_to_many(:categories) }
end
