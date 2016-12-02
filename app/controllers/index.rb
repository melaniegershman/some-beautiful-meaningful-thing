get '/' do
  # These code snippets use an open-source library. http://unirest.io/ruby
  # get the response from a form
  # response = Unirest.get "https://pafmon-walt-whitman-poems.p.mashape.com/poems",
  # headers:{
  #   "X-Mashape-Key" => HEADERS_MASHAPE_KEY,
  #   "Accept" => "application/json"
  # }
  redirect '/poems'
end