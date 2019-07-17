require 'mechanize'
 
agent = Mechanize.new
 
google_url = "http://google.com/"
page = agent.get(google_url)
 
search_form = page.form('f')
search_form.q = 'GitHub TouchFart'
 
page = agent.submit(search_form)
 
pp page.search('h3.r').map(&:text)
