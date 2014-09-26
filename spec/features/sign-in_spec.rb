describe "the sign-in process" do
  it "signs a user in who uses the correct password" do
    visit 'sessions/new'
    user = User.create(:name => 'Bobby', :email => 'user@example.com', :password => 'password')
    fill_in 'Email' , :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content "It's Bobby, everybody!"
  end
end
