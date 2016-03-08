require 'rails_helper'

RSpec.describe "Servicos", type: :request do
  describe "GET /servicos" do
    it "works! (now write some real specs)" do
      get servicos_path
      expect(response).to have_http_status(200)
    end
  end
end
