class BusinessProcess < ActiveRecord::Base
  has_paper_trail
  attr_accessible :company_id, :created_by, :description, :name, :identifier

  validates_presence_of :name, :identifier
  validates_uniqueness_of :identifier, :name, :scope => :company_id

  validates_presence_of :company_id
  belongs_to :company
  has_many :steps, :dependent => :restrict
  has_many :process_instances, :dependent => :restrict
  has_many :tokens, :dependent => :restrict

  def default_start
    steps.where(:default_start => true).first
  end
end
