require 'csv'
a = File.read("files/schools.csv")
b = CSV.parse(a, headers:true)
b.each do |be|
	School.new(be.to_hash).save
end

