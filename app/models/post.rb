class Post < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :text, presence: true

  before_create :get_watson_results

  private

    def get_watson_results
      result = Watson.new(self.text).result

      result[:document_tone][:tone_categories].each do |tones|
        tones[:tones].each do |tone|
          self[tone[:tone_id].to_sym] = tone[:score]
        end
      end
    end
end
