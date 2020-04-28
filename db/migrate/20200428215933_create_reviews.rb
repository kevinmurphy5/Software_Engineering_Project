class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.float :rating

      t.timestamps
    end
  end
end
