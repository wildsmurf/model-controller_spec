class CreateGuardians < ActiveRecord::Migration[5.1]
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :class
      t.string :subclass
      t.string :light
      t.string :race
      t.string :gender

      t.timestamps
    end
  end
end
