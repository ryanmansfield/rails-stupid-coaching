class QuestionsController < ApplicationController
  def ask
    @question = params[:ask]
  end

  def answer
    @answer = if params[:ask] == 'I am going to work'
                'great'
              elsif params[:ask].include? '?'
                'Silly  question, get dressed and go to work.'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
