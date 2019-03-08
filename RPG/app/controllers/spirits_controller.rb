class SpiritsController < ApplicationController
  def new
        @spirit = Spirit.new
    end

    def create
        @spirit = Spirit.new(spirit_params)
        if @spirit.save
            flash[:message] = "Success! Please login."
        redirect_to login_path
        else
            flash[:errors] = "Well you did something wrong"
            redirect_to new_spirit_path
        end
    end

    private

    def spirit_params
        params.require(:spirit).permit(:name, :username)
    end
end
