class Api::V1::TrainingRoomController < ApplicationController
  def users_response
    pp params
    sentence = Sentence.find(params[:id].to_i)
    quality_of_recall = params[:quality_of_recall].to_i


    sentence.process_recall_result(quality_of_recall)

    if sentence.save
      next_sentence = Sentence.next_sentence

      render json: next_sentence, status: :ok
    else
      render json: '', status: 404
    end
  end

  def next_sentence
    sentence = Sentence.next_sentence

    render json: sentence, status: :ok
  end
end
