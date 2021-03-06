class InvoicePosition < ActiveRecord::Base

  has_paper_trail
  
  attr_accessible :base_price, :created_by, :description, :discount, 
                  :price, :product_id, :quantity, :textposition, 
                  :unit_id, :value, :vatrate

  validates_presence_of :product_id, :quantity, :unit_id
                    
  belongs_to :invoice_header
  belongs_to :product
  belongs_to :unit
  
end
