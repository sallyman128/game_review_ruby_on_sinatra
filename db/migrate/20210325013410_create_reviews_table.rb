class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :message
      t.integer :user_id
      t.integer :game_id
    end
  end
end
