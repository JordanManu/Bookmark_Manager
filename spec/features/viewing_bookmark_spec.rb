# frozen_string_literal: true

feature 'Viewing Bookmarks' do
  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
end
