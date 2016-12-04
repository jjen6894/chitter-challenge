require 'spec_helper'
feature "sign_up" do
  scenario "when a user first comes to the page, they sign up" do
    def sign_up
    visit '/'
    fill_in "email", with: "Jack_6894@gmail.com"
    fill_in "password", with: "Northall121"
    fill_in "name", with: "Jack Northall"
    fill_in "username", with: "jjen6894"
    click_button("Sign up")
    end
    expect { sign_up }.to change(User, :count).by(1)
    expect(User.first.email).to eq("Jack_6894@gmail.com")

  end
end
