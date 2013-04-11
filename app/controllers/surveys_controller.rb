class SurveysController < ApplicationController
  def new
    @survey = Survey.new

    1.times do |i|
     @question = @survey.questions.build 
    end

    1.times do |a|
      @question.choices.build
    end

    # do |question|
    #     2.times do question.choices.build

  end

  def create
    @survey = Survey.new(params[:survey])
    @survey.save!
    redirect_to @survey
  end

  def show
    @survey = Survey.find(params[:id])
  end


end
