require 'rails_helper'

RSpec.describe "directsightings/show", :type => :view do
  before(:each) do
    @directsighting = assign(:directsighting, Directsighting.create!(
      :species => "Species",
      :status => false,
      :city_name => "City Name",
      :user_name => "User Name",
      :email => "Email",
      :phno => "Phno",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Species/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/City Name/)
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phno/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
