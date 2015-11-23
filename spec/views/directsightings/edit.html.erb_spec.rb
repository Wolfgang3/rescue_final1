require 'rails_helper'

RSpec.describe "directsightings/edit", :type => :view do
  before(:each) do
    @directsighting = assign(:directsighting, Directsighting.create!(
      :species => "MyString",
      :status => false,
      :city_name => "MyString",
      :user_name => "MyString",
      :email => "MyString",
      :phno => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit directsighting form" do
    render

    assert_select "form[action=?][method=?]", directsighting_path(@directsighting), "post" do

      assert_select "input#directsighting_species[name=?]", "directsighting[species]"

      assert_select "input#directsighting_status[name=?]", "directsighting[status]"

      assert_select "input#directsighting_city_name[name=?]", "directsighting[city_name]"

      assert_select "input#directsighting_user_name[name=?]", "directsighting[user_name]"

      assert_select "input#directsighting_email[name=?]", "directsighting[email]"

      assert_select "input#directsighting_phno[name=?]", "directsighting[phno]"

      assert_select "input#directsighting_latitude[name=?]", "directsighting[latitude]"

      assert_select "input#directsighting_longitude[name=?]", "directsighting[longitude]"
    end
  end
end
