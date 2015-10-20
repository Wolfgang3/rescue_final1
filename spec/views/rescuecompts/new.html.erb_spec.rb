require 'rails_helper'

RSpec.describe "rescuecompts/new", :type => :view do
  before(:each) do
    assign(:rescuecompt, Rescuecompt.new(
      :user_id => 1,
      :complaint_id => 1,
      :status => "MyString"
    ))
  end

  it "renders new rescuecompt form" do
    render

    assert_select "form[action=?][method=?]", rescuecompts_path, "post" do

      assert_select "input#rescuecompt_user_id[name=?]", "rescuecompt[user_id]"

      assert_select "input#rescuecompt_complaint_id[name=?]", "rescuecompt[complaint_id]"

      assert_select "input#rescuecompt_status[name=?]", "rescuecompt[status]"
    end
  end
end
