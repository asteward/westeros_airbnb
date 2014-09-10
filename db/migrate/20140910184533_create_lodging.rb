class CreateLodging < ActiveRecord::Migration
  def change
    create_table :lodgings do |t|
      t.belongs_to :user
      t.string :location
      t.float :cost

      t.timestamps
    end
  end
end
