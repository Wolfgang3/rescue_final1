require 'rails_helper'

RSpec.describe "reports/edit", :type => :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :user_id => 1,
      :sighting_id => 1,
      :details => "MyString"
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "input#report_user_id[name=?]", "report[user_id]"

      assert_select "input#report_sighting_id[name=?]", "report[sighting_id]"

      assert_select "input#report_details[name=?]", "report[details]"
    end
  end
end
