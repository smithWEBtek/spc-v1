require 'csv'

class Import < ApplicationRecord

  def self.import_csv
    # csv_filepaths_array = Dir.glob("lib/assets/*.csv")
		csv_filepaths_array = [
			"lib/assets/customer.csv",
			"lib/assets/pool.csv",
			"lib/assets/employee.csv",
			"lib/assets/truck.csv",
			"lib/assets/inventory.csv",
			"lib/assets/work_order.csv",
			"lib/assets/service_call.csv",
			"lib/assets/truck_service_call.csv",
			"lib/assets/employee_service_call.csv"]
		count = 0
		while count < csv_filepaths_array.length do 
			csv_filepaths_array.each do |csv_file|
				csv_file_text = File.read(csv_file)
				filename = File.basename(csv_file, ".csv").split("_")
				model = filename.collect!{|n|n.capitalize}.join(",").gsub(",","").constantize
				csv = CSV.parse(csv_file_text, :headers => true)
				csv.each do |row|
					model.create!(row.to_hash)
				end
				count +=1
			end
		end
  end
end
