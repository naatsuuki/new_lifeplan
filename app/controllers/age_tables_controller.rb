class AgeTablesController < ApplicationController
  def index
    @age_tables = AgeTable.all
  end

  def new
    @age_table = AgeTable.new
  end

  def create
    @age_table = AgeTable.new(age_table_params)
    @age_table.user_id = current_user.id

    if @age_table.save
      redirect_to age_tables_path, notice: '年齢表が作成されました。'
    else
      render :new
    end
  end

  def destroy
    @age_table = AgeTable.find(params[:id])
    @age_table.destroy
    redirect_to age_tables_path, notice: '年齢表が削除されました。'
  end

  private

  def age_table_params
    params.require(:age_table).permit(:table_title)
  end
end
