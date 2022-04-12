require 'bookmark'

describe Bookmark do
  it "Prints a list of all bookmarks" do 
    bookmarks = Bookmark.all

    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
  end
end

