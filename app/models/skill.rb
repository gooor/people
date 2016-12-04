class Skill < ActiveRecord::Base
  belongs_to :skill_category

  has_many :user_skill_rates
  has_many :users, through: :user_skill_rates
end
