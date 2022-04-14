feature 'deletes bookmark' do
  scenario 'User can delete bookmark from bookmark manager' do
    Bookmark.create('www.test.com', 'Test')
    visit('/bookmarks')
    expect(page).to have_link('Test', href: "www.test.com")
    
    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_content 'Makers'
  end
end