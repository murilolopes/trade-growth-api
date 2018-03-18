class Trade < ApplicationRecord
	acts_as_tenant(:user)
	belongs_to :goal
end
