require 'rails_helper'

RSpec.describe "rescuecompts/index", :type => :view do
  before(:each) do
    assign(:rescuecompts, [
      Rescuecompt.create!(
        :user_id => 1,
        :complaint_id => 2,
        :status => "Status"
      ),
      Rescuecompt.create!(
        :user_id => 1,
        :complaint_id => 2,
        :status => "Status"
      )
    ])
  end

  it "renders a list of rescuecompts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
