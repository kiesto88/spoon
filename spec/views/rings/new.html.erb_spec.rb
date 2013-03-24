require 'spec_helper'

describe "rings/new" do
  before(:each) do
    assign(:ring, stub_model(Ring,
      :name => "MyString",
      :description => "MyText",
      :image => "MyString",
      :category => "MyString"
    ).as_new_record)
  end

  it "renders new ring form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rings_path, :method => "post" do
      assert_select "input#ring_name", :name => "ring[name]"
      assert_select "textarea#ring_description", :name => "ring[description]"
      assert_select "input#ring_image", :name => "ring[image]"
      assert_select "input#ring_category", :name => "ring[category]"
    end
  end
end
