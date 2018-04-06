require 'open-uri'
require 'nokogiri'

	url = "https://www.healthtap.com/user_questions/1505250-after-the-removal-of-my-conjunctival-nevus-will-my-co-workers-see-anything-noticeable-in-my-eye-on"

	document = open(url)
	content = document.read
	parsed_content = Nokogiri::HTML(content)


	parsed_content.css('.superContent').each do |fuck|
	pergunta = fuck.css('.clearfix').css('.hidden').css('.topic-name').inner_text
	questoes = fuck.css('.clearfix').css('.long-answer').inner_text
	
	#	title = row.css('.topic-name')

	puts '--------Pergunta-----'
	puts pergunta
	puts '-------Respostas-----'
	puts questoes
	
end