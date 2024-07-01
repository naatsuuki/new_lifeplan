class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path, notice: '登録が完了しました。'
    else
      render :new
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :birth_year)
  end
end
