describe "adding an artist" do
  it "creates a new artist" do
    visit new_artist_path
    fill_in 'Name: ', :with => 'Bobby Brown'
    save_and_open_screenshot
    click_button 'Create Artist'
    expect(page).to have_content "Artist created!"
  end
end
