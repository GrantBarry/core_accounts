class CreateCoreWebsiteDomains < ActiveRecord::Migration[7.1]
  def change
    create_table :core_website_domains, id: :uuid do |t|
      t.belongs_to :core_website, null: false, foreign_key: true, type: :uuid, index: true
      t.string :domain

      t.timestamps
    end
  end
end
