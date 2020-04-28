class AddTagFkToAuctiontag < ActiveRecord::Migration[6.0]
  def change
    add_reference :auctiontags, :tag, foreign_key: true
  end
end
