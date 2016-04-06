me = {"Name"=>"Tyler", "Age"=> 24, "Hometown"=>"Seagrove", "Food"=>"Tacos"}

me.each do |key, value|
	if key == "Name"
		puts "My name is #{value}"
	end

	if key =="Age"
		puts "Im #{value}"
	end

	if key == "Hometown"
		puts "From #{value}"
	end

	if key == "Food"
		puts "and my favorite food is #{value.downcase}"
	end
end
