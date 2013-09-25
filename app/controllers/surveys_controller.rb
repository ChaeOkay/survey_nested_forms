class SurveysController < ApplicationController
  def create
    @survey = Survey.create(params[:survey])
  end

  def new
    @survey = Survey.new
  end
end
