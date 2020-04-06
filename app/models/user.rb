class User < ApplicationRecord
  rolify role_cname: 'Admin'
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reports, :dependent => :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
