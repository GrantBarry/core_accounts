class CreateCoreWebsites < ActiveRecord::Migration[7.1]
  def change
    create_table :core_websites, id: :uuid do |t|
      t.belongs_to :core_account, null: false, foreign_key: true, type: :uuid, index: true
      t.string :description
      t.string :title
      t.string :keywords
      t.string :enquiry_phone
      t.string :enquiry_email

      t.timestamps
    end
  end
end
