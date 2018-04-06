require 'open-uri'
require 'nokogiri'



	url = "https://www.healthtap.com/user_questions/1104794-how-to-remove-eye-crust-on-eyelids-and-keep-it-gone"

	document = open(url)
	content = document.read
	parsed_content = Nokogiri::HTML(content)


	parsed_content.css('.superContent').css('.question-card').each do |ronen|
		pergunta = ronen.css('.question-header').inner_text
		resposta = ronen.css('.answer-body').inner_text
	



	puts '--------Pergunta-----'
	puts pergunta
	puts '--------Resposta-----'
	puts resposta 
end


	# parsed_content.css('.superContent').css('.content-wrap').each do |row|
	# title 		= row.css('.hrlnk').first.inner_text
	# link		= row.css('.hrlnk').first.attributes["href"].value
	# posted_at	= row.css('time').first.attributes["datetime"].value
	# neighb_elem = row.css('.pnr').css('small')

	# if neighb_elem.any?
	# 	neighborhood = neighb_elem.first.inner_text.strip
	# else
	# 	neighborhood = ''
	# end


	# out = File.new("output.txt", "w")
	# out.puts "#{title} day(s) contain(s) minute(s)."
	# out.close
# end
# 	puts "tetsas"
# 	puts "#{title} #{neighborhood}"
# 	puts "Link: #{link}"
# 	puts "Posted at #{posted_at}"
# 	puts '-------------------------'




