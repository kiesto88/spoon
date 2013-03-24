require 'spec_helper'

describe "rings/show" do
  before(:each) do
    @ring = assign(:ring, stub_model(Ring,
      :name => "Name",
      :description => "MyText",
      :image => "Image",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
    rendered.should match(/Category/)
  end
end
