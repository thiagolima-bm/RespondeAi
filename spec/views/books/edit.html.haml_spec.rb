require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :edition => "MyString",
      :publisher => "MyString",
      :isbn10 => "MyString",
      :isbn13 => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_edition", :name => "book[edition]"
      assert_select "input#book_publisher", :name => "book[publisher]"
      assert_select "input#book_isbn10", :name => "book[isbn10]"
      assert_select "input#book_isbn13", :name => "book[isbn13]"
      assert_select "textarea#book_description", :name => "book[description]"
    end
  end
end
