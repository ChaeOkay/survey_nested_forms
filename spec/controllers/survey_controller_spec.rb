require 'spec_helper'

describe SurveysController do

  describe "#create" do
    context "with questions" do
      let(:params) { { survey: {
                    title: "What's Awesome", questions_attributes: [
                              { description: "Fav thing to do"},
                              { description: "Types of Parties"},
                              { description: "Cheeses"}
                              ]
                        }} }


      it "should increase survey count by 1" do
        expect {
          post :create, params
        }.to change(Survey, :count).by(1)
      end

      it "should increase question count by 3" do
        expect {
          post :create, params
        }.to change(Question, :count).by(3)
      end
    end
  end
end
