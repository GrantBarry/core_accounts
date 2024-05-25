class Core::Website < ApplicationRecord
  belongs_to :account, class_name: 'Core::Account'

  validates :description, :title, :keywords, :enquiry_email, presence: true

  normalizes :enquiry_email, with: ->(attribute) { attribute.strip.downcase }
  normalizes :description, :title, :keywords, :enquiry_telephone, with: ->(attribute) { attribute.strip }

  has_many :website_domains, dependent: :delete_all, class_name: 'Core::WebsiteDomain'
end
