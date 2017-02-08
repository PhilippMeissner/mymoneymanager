class MoneyFlow < ActiveRecord::Base
  monetize :amount_cents,
    numericality: {
      greater_than: 0
    }
  validates :name, :flow_type, presence: true
end
