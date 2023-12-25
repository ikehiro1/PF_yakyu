class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         belongs_to :team, optional: true
         belongs_to :order, optional: true
         has_one_attached :prayer_img
         
         enum hand: {右投:0,左投:1,両投:2}
         enum batting: {右打:0,左打:1,両打:2}

end
