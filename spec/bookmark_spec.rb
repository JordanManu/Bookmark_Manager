require_relative '../lib/bookmark'
require 'web_helper_spec'

describe Bookmark do
  let(:bookmarks) { Bookmark.all }
 
  context 'when created' do
    it 'has a name' do
      expect(Bookmark.create('url', 'title')).to be_instance_of(Bookmark)
    end
  end

  context '#all' do
    it 'returns all bookmarks' do
      # expect(bookmarks).to include({ url: "http://www.makersacademy.com", title: "Makers" },
      #                              { url: "http://www.destroyallsoftware.com", title: "Destroy" },
      #                              { url: "http://www.google.com", title: "Google" })
                                   
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.title).to eq 'Makers'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'                            
    end
  end

  context "#create" do
    it "adds a bookmark to the bookmark manager" do
      bookmark = Bookmark.create('https://myspace.com', "MySpace")
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      # expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'MySpace'
      expect(bookmark.url).to eq 'https://myspace.com'
    end
  end

  context "#delete" do
    it "deletes a bookmark" do
      bookmark = Bookmark.create('Test', 'www.test.com')

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 3
    end
  end
end
