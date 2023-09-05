#location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'Ubik')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'Ubik', author: 'Phillip K. Dick')
    end

    it 'author is valid' do
        expect(subject).to be_valid
    end

    it 'author is not a string' do
        subject.author = nil
        expect(subject.author).not_to be_a_kind_of(String) 
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'Ubik', price: 7.99)
    end

    it 'price is valid' do
        expect(subject).to be_valid
    end

    it 'price is not a numeric value' do
        subject.price = nil
        expect(subject.price).not_to be_a_kind_of(Numeric) 
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'Ubik', published_date: '01-11-1969')
    end

    it 'published date is valid' do
        expect(subject).to be_valid
    end

    it 'published date is not a date' do
        subject.published_date = 8
        expect(subject.published_date).not_to be_a_kind_of(Date) 
    end
end