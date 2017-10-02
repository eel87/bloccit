require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:answer) { Answer.create!(body: "Answer Body") }
  describe "attributes" do
      it "has body and resolved attributes" do
          expect(answer).to have_attributes(body: "Answer Body")
      end
  end
end
