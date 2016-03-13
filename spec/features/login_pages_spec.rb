describe "the login process" do
  it "signs a user in who uses the correct password" do
    visit 'login'
    user = User.create(:name => 'Bobby', :email => 'user@example.com', :password => 'password')
    fill_in 'Email' , :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    expect(page).to have_content "Welcome, Bobby!"
  end

  it "gives user an error when they use the wrong password" do
    visit 'login'
    user = User.create(:name => 'Bobby', :email => 'user@example.com', :password => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'wrong'
    click_button 'Log In'
    expect(page).to have_content "Email or password is invalid"
  end
end
