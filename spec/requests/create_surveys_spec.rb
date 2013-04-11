require 'spec_helper'

describe "CreateSurveys" do
  describe "GET /new_surveys" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_survey_path
      response.status.should be(200)
    end

    # before { visit new_survey_path }

    it "creates a survey" do
      visit new_survey_path
      fill_in "survey_title", with: "My Title"
      fill_in "survey_description", with: "My description"
      fill_in "survey_questions_attributes_0_content", with: "this is my question?"
      # fill_in "survey_questions_attributes_1_content", with: "this is my question 2?"
      fill_in "survey_questions_attributes_0_choices_attributes_0_value", with: "Choice1\rChoice2"
      click_button "Create Survey"
      # page.should have_content "Survey:"
    end

  end
end
