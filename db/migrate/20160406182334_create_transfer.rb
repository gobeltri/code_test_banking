class CreateTransfer < ActiveRecord::Migration

  def change
    create_table :transfers do |t|
      t.string :type
      t.float :commission
      t.float :limit
      t.float :chance_failure

      t.timestamps
    end

    # Joining table + indexes (has_and_belongs_to association: alphabetycal order, not represents a model)
    create_table :accounts_transfers, id: false do |t|
      t.integer :account_id
      t.integer :transfer_id
    end

    add_index :accounts_transfers, :account_id
    add_index :accounts_transfers, :transfer_id
  end
end
