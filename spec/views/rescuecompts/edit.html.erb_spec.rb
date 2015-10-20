require 'rails_helper'

RSpec.describe "rescuecompts/edit", :type => :view do
  before(:each) do
    @rescuecompt = assign(:rescuecompt, Rescuecompt.create!(
      :user_id => 1,
      :complaint_id => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit rescuecompt form" do
    render

    assert_select "form[action=?][method=?]", rescuecompt_path(@rescuecompt), "post" do

      assert_select "input#rescuecompt_user_id[name=?]", "rescuecompt[user_id]"

      assert_select "input#rescuecompt_complaint_id[name=?]", "rescuecompt[complaint_id]"

      assert_select "input#rescuecompt_status[name=?]", "rescuecompt[status]"
    end
  end
end
