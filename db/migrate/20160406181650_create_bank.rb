class CreateBank < ActiveRecord::Migration

  def change
    create_table :banks do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
