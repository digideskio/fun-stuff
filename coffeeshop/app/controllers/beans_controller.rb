class BeansController < ApplicationController
  def index
    @beans = Bean.all
  end

  def show
    @bean = Bean.find(params[:id])
  end

  def new
    @bean = Bean.new
  end

  def create
    @bean = Bean.new(bean_params)

    if @bean.save
      redirect_to beans_path
    else
      render "new"
    end
  end

  def edit
    @bean = Bean.find(params[:id])
  end

  def update
    @bean = Bean.find(params[:id])

    if @bean.update(bean_params)
      redirect_to beans_path
    else
      render 'edit'
    end
  end

  def destroy
    @bean = Bean.find(params[:id])
    @bean.destroy
    redirect_to beans_path
  end

  private
    def bean_params
      params.require(:bean).permit(:name,:roast,:origin,:quantity)
    end
end
