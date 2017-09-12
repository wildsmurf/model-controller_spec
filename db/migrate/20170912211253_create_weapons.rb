class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :type
      t.string :damage
      t.belongs_to :guardian, foreign_key: true

      t.timestamps
    end
  end
end
