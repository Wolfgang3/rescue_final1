require 'rails_helper'

RSpec.describe "rescuecompts/show", :type => :view do
  before(:each) do
    @rescuecompt = assign(:rescuecompt, Rescuecompt.create!(
      :user_id => 1,
      :complaint_id => 2,
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
  end
end
