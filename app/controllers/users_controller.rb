class UsersController < ApplicationController
  def index
    @users=User.all
    
  end

  def show
    @user = User.find(params[:id])
    @study_records = @user.study_records
    @line_chart_data = []
    @study_records.each do |study_record|
      @line_chart_data << [study_record.created_at.to_s, study_record.num_of_session]
    end
  end
end
