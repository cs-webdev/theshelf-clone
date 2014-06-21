require 'rails_helper'

describe 'Create a book' do

  it 'Should appear in Book index page' do
    Book.create name:'Design Patterns' , author:'Some Guy'

    visit(books_path)

    expect(page.body).to have_text("Design Patterns")
  end

end