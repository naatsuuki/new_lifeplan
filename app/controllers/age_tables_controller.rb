class AgeTablesController < ApplicationController
  def index
    @age_tables = AgeTable.all
  end

  def show
    @age_table = AgeTable.find(params[:id])
  end

  def new
    @age_table = AgeTable.new
  end

  def create
    @age_table = AgeTable.new(age_table_params)
    if @age_table.save
      redirect_to age_tables_path, notice: '年齢表を作成しました。'
    else
      flash.now[:alert] = '年齢表の作成に失敗しました。'
      render :new
    end
  end

  def destroy
    @age_table = AgeTable.find(params[:id])
    @age_table.destroy
    redirect_to age_tables_path, notice: '年齢表を削除しました。'
  end

  private

  def age_table_params
    params.require(:age_table).permit(:user_id, :table_title)
  end
end
