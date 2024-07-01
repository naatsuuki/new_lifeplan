# app/controllers/people_controller.rb

class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      flash[:success] = "他の人の情報を保存しました。"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :birth_year)
  end
end
