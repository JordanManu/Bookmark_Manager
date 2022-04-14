feature "#create" do
  scenario "adds bookmark to bookmark manager" do
    Bookmark.create('https://myspace.com/', 'MySpace')

    visit '/bookmarks'
    expect(page).to have_link('MySpace', href: 'https://myspace.com/')
  end
end
