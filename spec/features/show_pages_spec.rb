require "helper_methods"

describe "adding a show" do
  it "allows a logged-in user to add a show for an artist" do
    user = User.create({name: "Dans MaSheen", email: "dans@email.com", password: "12345678", password_confirmation: "12345678"})
    artist = Artist.create({name: "Prince"})
    login(user)
    visit artist_path(artist)
    click_button "Add New Show"
    fill_in "Date", with: "10202002"
    click_button "Create Show"
    expect(page).to have_content "New show created!"
  end
end
