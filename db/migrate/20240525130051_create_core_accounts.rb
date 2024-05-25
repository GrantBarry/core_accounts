class CreateCoreAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :core_accounts, id: :uuid do |t|
      t.string :company_name
      t.string :legal_name
      t.string :email
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
