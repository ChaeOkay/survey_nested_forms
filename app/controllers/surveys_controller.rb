class SurveysController < ApplicationController
  def create
    @survey = Survey.create(params[:survey])
  end
end
