class Core::WebsiteDomain < ApplicationRecord
  belongs_to :website, class_name: 'Core::Website', foreign_key: :core_website_id

  validates :domain, presence: true, uniqueness: true
  normalizes :domain, with: ->(attribute) { attribute.strip.downcase }
end
