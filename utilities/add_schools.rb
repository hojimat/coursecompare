require 'csv'
a = File.read("utilities/schools.csv")
b = CSV.parse(a, headers:true)
b.each do |be|
	Ref.new(be.to_hash).save
end

