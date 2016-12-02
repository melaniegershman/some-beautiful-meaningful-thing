def logged_in?
  !!current_user
end

def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def login
  session[:user_id] = @user.id
end

def logout
  session.clear
end

def authorized?(user)
  current_user && current_user == user
end

def require_login
  redirect '/sessions/new' unless logged_in?
end