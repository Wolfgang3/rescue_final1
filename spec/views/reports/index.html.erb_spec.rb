require 'rails_helper'

RSpec.describe "reports/index", :type => :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :user_id => 1,
        :sighting_id => 2,
        :details => "Details"
      ),
      Report.create!(
        :user_id => 1,
        :sighting_id => 2,
        :details => "Details"
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
