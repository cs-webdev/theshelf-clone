require 'rails_helper'

describe 'Create a book' do

  it 'should allow for respective show view' do
    book = Book.create name: 'Book', author: 'Author', edition: 1

    visit(books_path + '/' + book.id.to_s)

    expect(page.body).to have_text('Book')
  end

  it 'Should appear in Book index page' do
    Book.create name: 'Book 1', author: 'Author 1', edition: 1
    Book.create name: 'Book 2', author: 'Author 2', edition: 1

    visit(books_path)

    expect(page.body).to have_text('Book 1')
    expect(page.body).to have_text('Book 2')
  end

  it 'From the index view' do
    visit(books_path)

    expect(page.body).to have_text 'New Book', new_book_path
  end

end
