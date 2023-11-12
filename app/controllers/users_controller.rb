class UsersController < ApplicationController
  def index
    @users=User.all
    
  end

  def show
    @user = User.find(params[:id])
    study_records = @user.study_records
    @data=study_records.group_by_day(:created_at, last: 7, current: true).sum('study_records.num_of_session')
   
  
  end
end
