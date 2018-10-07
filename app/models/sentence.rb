class Sentence < ApplicationRecord
  include Repetition
  scope :next_sentence, -> { order('next_repetition asc').first }
end
