class PeopleController < ApplicationController

  def create
    @training = Training.find(params[:training_id])
    @person = @training.people.create(person_params)
    redirect_to training_path(@training)
  end

private
  def person_params
    params.require(:person).permit(:name, :status)
  end

end
