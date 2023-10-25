class Contact < ApplicationRecord
  belongs_to :person
  validates :tipo, presence: true, inclusion: {in: %w[facebook email instagram]}
  validates :valor, presence: true
end
