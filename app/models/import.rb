require 'csv'

class Import < ApplicationRecord

  def import1
    @records = Dir.glob("lib/assets/*.csv")
    # csv_file = "./lib/assets/"+ self.file_name + ".csv"
    @records.each do |file|
      csv_text = File.read(file)
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
  binding.pry
        file.capitalize.create!(row.to_hash)
      end
    end
  end

  def import2
    csv_text = File.read(Rails.root.join('lib', 'assets', 'truck.csv'))
    puts csv_text
  end
end