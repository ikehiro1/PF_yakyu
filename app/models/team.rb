class Team < ApplicationRecord
    has_many :users
    has_one_attached :team_img
end
