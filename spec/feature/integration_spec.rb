# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end
end

RSpec.describe 'Creating a book with an author', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'jk rowling'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('jk rowling')
    end
end

RSpec.describe 'Creating a book with an author and price', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'jk rowling'
      fill_in 'Price', with: '45'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('45')
    end
  end

  RSpec.describe 'Creating a book with an author, price, and published date', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'jk rowling'
      fill_in 'Price', with: '45'
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('45')
    end
  end