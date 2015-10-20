require 'rails_helper'

describe ComplaintsController do
 

  describe 'GET #new' do
    it "assigns a new Complaint to @complaint" do
      get :new
      expect(assigns(:complaint)).to be_a_new(Complaint)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end



end