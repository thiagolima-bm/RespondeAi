require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :author => "Author",
      :edition => "Edition",
      :publisher => "Publisher",
      :isbn10 => "Isbn10",
      :isbn13 => "Isbn13",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/Edition/)
    rendered.should match(/Publisher/)
    rendered.should match(/Isbn10/)
    rendered.should match(/Isbn13/)
    rendered.should match(/MyText/)
  end
end
