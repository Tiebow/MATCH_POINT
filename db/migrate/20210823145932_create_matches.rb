class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
