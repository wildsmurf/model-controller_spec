class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :guardians, :class, :klass
  end
end
