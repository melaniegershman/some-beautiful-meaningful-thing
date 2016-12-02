get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
  if @user
    login
    puts "User logged in!"
    redirect "/users/#{@user.id}"
  else
    puts "user has not logged in"
    @errors = ["This username and password entry did not match."]
    redirect '/sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
