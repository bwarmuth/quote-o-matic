class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :user_id
      t.integer :reseller_id
      t.integer :company_id
      t.integer :opportunity_id
      t.string :status
      t.datetime :approved_date
      t.datetime :declined_date
      t.datetime :sent_date
      t.datetime :completed_date
      t.string :access_key

      t.timestamps
    end
  end
end
