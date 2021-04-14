class RecordsController < ApplicationController
  # before_action :task_string, only: [:create]
  def index
    @record = Record.new
    @record = current_user.records
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


  private
  def record_params
    params.require(:record).permit(:practice_time, :ball, :content, check:[]).merge(user_id: current_user.id)
  end

  # def task_string
  #   params[:record][:check] = params[:record][:check].join("/")
  # end
end
