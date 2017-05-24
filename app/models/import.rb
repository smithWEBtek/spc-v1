require 'csv'

class Import < ApplicationRecord

  def import1
    csv_filepaths_array = Dir.glob("lib/assets/*.csv")
    csv_filepaths_array.each do |csv_file|
      csv_file_text = File.read(csv_file)
			model = File.basename(csv_file, ".csv").capitalize.constantize
      csv = CSV.parse(csv_file_text, :headers => true)
      csv.each do |row|
        model.create!(row.to_hash)
      end
    end
  end

  def import2
    csv_text = File.read(Rails.root.join('lib', 'assets', 'truck.csv'))
    puts csv_text
  end
end