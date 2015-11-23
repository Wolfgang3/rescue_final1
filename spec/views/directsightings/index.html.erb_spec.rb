require 'rails_helper'

RSpec.describe "directsightings/index", :type => :view do
  before(:each) do
    assign(:directsightings, [
      Directsighting.create!(
        :species => "Species",
        :status => false,
        :city_name => "City Name",
        :user_name => "User Name",
        :email => "Email",
        :phno => "Phno",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Directsighting.create!(
        :species => "Species",
        :status => false,
        :city_name => "City Name",
        :user_name => "User Name",
        :email => "Email",
        :phno => "Phno",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of directsightings" do
    render
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "City Name".to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phno".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
