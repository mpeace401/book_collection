#location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'Ubik'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end

RSpec.describe 'Creating a book with title, author', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'Ubik'
        fill_in "book[author]", with: 'Phillip K. Dick'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end

RSpec.describe 'Creating a book with title, price', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'Ubik'
        fill_in "book[price]", with: 7.99
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end

RSpec.describe 'Creating a book with title, published date', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'Ubik'
        fill_in "book[published_date]", with: '01-11-1969'
        click_on 'Create Book'
        expect(page).to have_content('Book was successfully created.')
    end
end
