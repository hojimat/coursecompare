require 'open-uri'
require 'nokogiri'
require 'mechanize'
#open webpage
agent = Mechanize.new
agent.get("http://registration.boun.edu.tr/schedule.htm")
#select a semester
agent.page.forms[0].fields[0].value='2016/2017-1'
agent.page.forms[0].submit
# copy all department links and names
@departments = Array.new
agent.page.parser.css("td a.menu2").each do |de|
	@departments << {name: de.text.strip.downcase,
					 link: "http://registration.boun.edu.tr#{de["href"]}"}
end
#visit all departments and take course names:
@courses = Array.new
@departments[0..5].map do |ab|
	vis = Nokogiri::HTML(open(ab[:link]))
	vis.css('tr.schtd,tr.schtd2').map do |de|
		@courses << {code: de.css('td')[0].text.gsub("\u00A0",""),
					name: de.css('td')[2].text.gsub("\u00A0",""),
					credit: de.css('td')[4].text.gsub("\u00A0","").to_i,
					dept: ab[:name]}
	end
end
#save
@courses.map do |co|
	Course.new(code: co[:code], school_id:1, credit:co[:credit], name: co[:name]).save
end
