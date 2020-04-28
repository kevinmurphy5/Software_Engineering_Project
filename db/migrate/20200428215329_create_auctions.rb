class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.string :item_name
      t.string :item_description
      t.string :image_path
      t.decimal :start_price
      t.decimal :win_price
      t.datetime :auction_ends
      t.boolean :auction_open_status

      t.timestamps
    end
  end
end
