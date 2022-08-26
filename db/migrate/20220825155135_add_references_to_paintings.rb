class AddReferencesToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :painting, index: true
  end
end
