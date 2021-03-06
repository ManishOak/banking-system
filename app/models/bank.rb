# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bank < ApplicationRecord
	has_many :users, :through => :account
	validates :name, presence: true
end
