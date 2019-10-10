
require 'nokogiri'
require 'open-uri'
require 'pry'

def get_the_email_of_a_townhal_from_its_webpage(a_townhal_url)
	name_selector = "body > div > main > section.text-center.well.well-sm > div > div > div > h1"
	
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{a_townhal_url}"))

	if a_townhal_url
		hash_result = { :name => page.css(name_selector).text, :email => page.css('tr.txt-primary.tr-last td')[7].text}
		return hash_result
	end
end

def get_all_the_urls_of_val_doise_townhalls
	array_of_urls = []
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

	page.css('a.lientxt').each do |val|
		array_of_urls.push(val['href'][2..-1])
	end
	array_of_urls.each do |url|
		puts get_the_email_of_a_townhal_from_its_webpage(url)
	end
end

get_all_the_urls_of_val_doise_townhalls