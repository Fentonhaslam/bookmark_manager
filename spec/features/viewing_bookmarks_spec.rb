
feature "Viewing bookmarks" do

  scenario "visiting the index page" do
    visit("/")
    expect(page).to have_content("Bookmark Manager")
  end

  scenario "viewing bookmarks" do
    visit('/bookmarks')
    # click_button "Bookmarks"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
    expect(page).to have_content "http://lokals.co.uk"
  end
end
