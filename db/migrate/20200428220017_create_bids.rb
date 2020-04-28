class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.decimal :bid_amount

      t.timestamps
    end
  end
end
