class Company < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :users, :through => :employments, :dependent => :restrict
  has_many :employments, :dependent => :restrict

end
