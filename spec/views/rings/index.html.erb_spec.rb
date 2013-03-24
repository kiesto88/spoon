require 'spec_helper'

describe "rings/index" do
  before(:each) do
    assign(:rings, [
      stub_model(Ring,
        :name => "Name",
        :description => "MyText",
        :image => "Image",
        :category => "Category"
      ),
      stub_model(Ring,
        :name => "Name",
        :description => "MyText",
        :image => "Image",
        :category => "Category"
      )
    ])
  end

  it "renders a list of rings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
