feature 'bookmarks allows the user' do
  scenario 'to view all bookmarks' do
    visit('/bookmarks')
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
