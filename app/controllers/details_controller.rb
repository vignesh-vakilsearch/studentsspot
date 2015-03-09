
class DetailsController < ApplicationController
  before_action :set_detail, only: [:edit, :update, :destroy]

  respond_to :html, :js

  def index
    if current_user.present?
      @details = current_user.details
       @details = Detail.all
    respond_with(@exams)
   else
      redirect_to '/users/sign_in'
   
    end
  end

  def show
    @detail = Detail.find(1)    
    respond_with(@detail)
  end

  def new
    @detail = Detail.new
    respond_with(@detail)
  end

  def edit
  end

  def create
    @detail = Detail.new(detail_params)
    @detail.save
    respond_with(@detail)
  end

  def update
    @detail.update(detail_params)
    respond_with(@detail)
  end

  def destroy
    @detail.destroy
    respond_with(@detail)
  end

  private
    def set_detail
      @detail = Detail.find(params[:id])
    end

    def detail_params
      params.require(:detail).permit(:name, :sex, :college, :preexam, :image, :user_id)
    end
end
