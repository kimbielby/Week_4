class TextInspectionsController < ApplicationController
  def new
  end

  def create
    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    render "results"
  end

  def timer
    @reading_time = @word_count / (275)
end
end
