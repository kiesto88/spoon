require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :username => "MyString",
      :bio => "MyText",
      :avatar => "MyString",
      :admin => false,
      :password_digest => "MyString",
      :remember_token => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_username", :name => "user[username]"
      assert_select "textarea#user_bio", :name => "user[bio]"
      assert_select "input#user_avatar", :name => "user[avatar]"
      assert_select "input#user_admin", :name => "user[admin]"
      assert_select "input#user_password_digest", :name => "user[password_digest]"
      assert_select "input#user_remember_token", :name => "user[remember_token]"
    end
  end
end
