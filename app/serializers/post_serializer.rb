class PostSerializer < ActiveModel::Serializer
  attributes :id, :text, :anger, :disgust, :fear, :joy, :sadness, :analytical, :confident, :tentative, :openness_big5, :conscientiousness_big5, :extraversion_big5, :agreeableness_big5, :emotional_range_big5
  has_one :user
end
