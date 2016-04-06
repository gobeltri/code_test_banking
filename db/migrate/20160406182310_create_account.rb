class CreateAccount < ActiveRecord::Migration

  def change
    create_table :accounts do |t|
      t.integer :bank_id
      t.string :type
      t.integer :balance

      t.timestamps
    end

    # Foreign key (every time you have a belong_to association)
    add_index :accounts, :bank_id
  end
end
