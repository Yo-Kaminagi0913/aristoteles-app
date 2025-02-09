class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = current_user.stories.build(story_params)
    if @story.save
      redirect_to new_story_story_question_path(@story)
    else
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :genre_id, :medium_id)
  end
end
