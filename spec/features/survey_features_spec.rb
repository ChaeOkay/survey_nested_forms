require 'spec_helper'

feature 'Survey' do
  describe 'making a survey' do
    context 'valid params' do
      it 'should display a success message' do
        visit new_survey_path
        fill_in 'survey_title', with: "Yo Mama's Survey"
        # fill_in 'survey_question_description', with: "How phat?"
        # click_button "Create Amazing Survey"
        # expect(page.body).to have_content("Survey successfully saved")
      end
    end
  end
end
