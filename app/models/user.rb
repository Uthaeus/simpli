class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name 

  has_many :requirements

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone_number, with: PHONE_REGEX
  validates :phone_number, length: { is: 10 }
end
