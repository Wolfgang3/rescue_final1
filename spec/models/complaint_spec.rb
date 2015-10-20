require 'rails_helper'

describe Complaint do
  it "is valid with a firstname, lastname and email" do
    complaint = Complaint.new(
      species: 'sa',
      status: 'true',
      city_name: 'mapusa' ,
      latitude: '0.2',
      longitude: '0.2',
      user_id: '2')
    expect(complaint).to be_valid
  end

  # for invalid or nill field
  # for errors put to
  it "is invalid without a species" do
    complaint = Complaint.new(species: nil)
    complaint.valid?
    expect(complaint.errors[:species]).not_to include("can't be blank")
  end

  it "is invalid without a status" do
    complaint = Complaint.new(status: nil)
    complaint.valid?
    expect(complaint.errors[:status]).not_to include("can't be blank")
  end


  it "is invalid without an city name" do
    complaint = complaint.new(city_name: nil)
    complaint.valid?
    expect(complaint.errors[:city_name]).to include("can't be blank")
  end

  it "is invalid without an latitude" do
    complaint = complaint.new(latitude: nil)
    complaint.invalid?
    expect(complaint.errors[:latitude]).to include("can't be blank")
  end

  it "is invalid without an longitude" do
    complaint = complaint.new(longitude: nil)
    complaint.valid?
    expect(complaint.errors[:longitude]).not_to include("can't be blank")
  end

  it "is invalid without an user_id" do
    complaint = complaint.new(user_id: nil)
    complaint.valid?
    expect(complaint.errors[:user_id]).not_to include("can't be blank")
  end


  # duplicate 


end