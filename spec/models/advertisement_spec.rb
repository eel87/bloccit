require 'rails_helper'

RSpec.describe advertisement, type: :model do
  let(:advertisement) { advertisement.create!(title: "New Ad Title", copy: "Ad Copy", price: 100) }
  
  describe "attributes" do
    it "has title, copy, and price attributes" do
        expect(advertisement).to have_attributes(title: "New Ad Title", copy: "Ad Copy", price: 100)
    end
  end
end