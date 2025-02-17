# app/models/tax_rate.rb
class TaxRate < ApplicationRecord
  belongs_to :province

  validates :province, presence: true
  validates :gst, :pst, :hst, numericality: { greater_than_or_equal_to: 0 }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "gst", "hst", "id", "province_id", "pst", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["province"]
  end
end
