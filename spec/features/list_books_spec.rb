require 'rails_helper'

describe 'User arrives at home' do

  it 'should see a list of the books in the shelf' do
    Book.create name:'Design Patterns' , author:'Some Guy'
    Book.create name:'Bible', author:'God'

    visit(book_index_path)

    expect(page.body).to have_text("Design Patterns")
    expect(page.body).to have_text("Bible")
  end

  it 'the list items should be links to the book page' do

  end
end