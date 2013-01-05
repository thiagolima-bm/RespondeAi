require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :edition => "Edition",
        :publisher => "Publisher",
        :isbn10 => "Isbn10",
        :isbn13 => "Isbn13",
        :description => "MyText"
      ),
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :edition => "Edition",
        :publisher => "Publisher",
        :isbn10 => "Isbn10",
        :isbn13 => "Isbn13",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Edition".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn10".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn13".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
