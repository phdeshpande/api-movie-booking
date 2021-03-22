require 'rails_helper'

RSpec.describe "Api::Screenings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/screenings/index"
      expect(response).to have_http_status(:success)
    end
  end

end
