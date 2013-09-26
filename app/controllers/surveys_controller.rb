class SurveysController < ApplicationController

  def new
    @survey = Survey.new
    @survey.questions.build
  end

  def create
    @survey = Survey.create(params[:survey])

    if @survey.save
      redirect_to new_survey_path, :notice => "Survey successfully saved"
    else
      redirect_to new_survey_path, :notice => @survey.errors.full_messages.join(', ')
    end
  end

end
