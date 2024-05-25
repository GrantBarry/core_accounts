class Core::WebsiteDomain < ApplicationRecord
  belongs_to :website, class_name: 'Core::Website'

  validates :domain, presence: true, uniqueness: true
  normalizes :domain, with: ->(attribute) { attribute.strip.downcase }
end
