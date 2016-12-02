get '/poems' do
  @poems = Poem.all
  erb :'poems/index'
end

get '/poems/:id' do
  @poem = Poem.find_by_id(params[:id])
  if request.xhr?
    erb :"poems/_poem", layout: false, locals: {poem: @poem}
  else
    erb :"poems/show"
  end
end