class CoresController < ApplicationController
  def index
    @cores = @user&.cores
  end
end
