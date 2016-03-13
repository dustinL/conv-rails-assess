require "helper_methods"

describe "adding an artist" do
  it "allows a logged-in user to create a new artist" do
    user = User.create({name: "Dans MaSheen", email: "dans@email.com", password: "12345678", password_confirmation: "12345678"})
    login(user)
    visit new_artist_path
    fill_in :name, with: 'Bobby Brown'
    save_and_open_page
    click_button 'Create Artist'
    expect(page).to have_content "Artist created!"
  end
end
