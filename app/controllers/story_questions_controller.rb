class StoryQuestionsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @questions = BeatSheetQuestion.all
  end

  def create
    @answer = BeatSheetAnswer.new(answer_params)
    if @answer.save
      redirect_to new_story_question_path(@answer.story)
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:beat_sheet_answer).permit(:content, :beat_sheet_question_id).merge(story_id: params[:story_id])
  end
end
