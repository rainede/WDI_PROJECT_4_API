class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :text
      t.float :anger
      t.float :disgust
      t.float :fear
      t.float :joy
      t.float :sadness
      t.float :analytical
      t.float :confident
      t.float :tentative
      t.float :openness_big5
      t.float :conscientiousness_big5
      t.float :extraversion_big5
      t.float :agreeableness_big5
      t.float :emotional_range_big5
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
