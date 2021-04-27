class RecordsController < ApplicationController
  # before_action :task_string, only: [:create]
  def index
    @practice_time = Record.select("practice_time")
    @ball = Record.select("ball")

  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
      render :new
    end
  end

  def show
    @record = Record.find(params[:id])
    @practice_time = @record.practice_time 
  end

  private
  def record_params
    params.require(:record).permit(:practice_time, :ball, :content, check:[]).merge(user_id: current_user.id)
  end

end
