# app/controllers/people_controller.rb
class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to welcome_index_path, notice: '登録しました。'
    else
      render 'welcome/index'
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :birth_year)
  end
end
