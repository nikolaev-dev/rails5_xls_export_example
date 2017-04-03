class Product < ApplicationRecord
  require 'csv'

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values
      end
    end
  end

end
