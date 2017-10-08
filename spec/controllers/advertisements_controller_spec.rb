require 'rails_helper'

RSpec.describe advertisementsController, type: :controller do
  let(:ad) { advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number) }
  
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "assigns [ad] to @advertisements" do
      get :index
      
      expect(assigns(:advertisements)).to eq([ad])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: ad.id }
      expect(response).to have_http_status(:success)
    end
    
    it "renders the #show view" do
      get :show, params: { id: ad.id }
      expect(response).to render_template :show
    end
    
    it "assigns ad to @advertisements" do
      get :show, params: { id: ad.id }
      expect(assigns(:advertisement)).to eq(ad)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    
    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end
    
    it "instantiates @advertisement" do
      get :new
      expect(assigns(:advertisement)).not_to be_nil
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "advertisement create" do
  it "increases the number of advertisement by 1" do
    expect { advertisement :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number } } }.to change(advertisement,:count).by(1)
  end
  
  it "assigns the new adverstisment @advertisement" do
    advertisement :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number } }
    expect(assigns(:adverstisment)).to eq advertisement.last
  end
  
  it "redirects to the new advertisement" do
    advertisement :create, params: { advertisement: { title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number } }
    expect(response).to redirect_to advertisement.last
  end
end
end
