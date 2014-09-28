describe "the sign-up process" do
  it "successfully creates a new user account" do
    visit 'users/new'
    fill_in 'Name', :with => 'Bobby'
    fill_in 'Email', :with => 'user1@example.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Create User'
    expect(page).to have_content "That's a new user you just created!"
  end
end
