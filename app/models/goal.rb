class Goal < ApplicationRecord
	acts_as_tenant(:user)
	has_many :trades
end
