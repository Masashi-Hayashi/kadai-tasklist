class ToppagesController < ApplicationController
  def index
     if logged_in?
      @task = current_user.tasks.build  
      @tasks = current_user.tasks.order('created_at DESC')
     end
  end
end
