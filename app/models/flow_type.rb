class FlowType < ActiveRecord::Base
  validates :name, presence: true
end
