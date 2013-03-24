require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email => "Email",
      :username => "Username",
      :bio => "MyText",
      :avatar => "Avatar",
      :admin => false,
      :password_digest => "Password Digest",
      :remember_token => "Remember Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Username/)
    rendered.should match(/MyText/)
    rendered.should match(/Avatar/)
    rendered.should match(/false/)
    rendered.should match(/Password Digest/)
    rendered.should match(/Remember Token/)
  end
end
