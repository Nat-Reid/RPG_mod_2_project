module DeitiesHelper
  def riddle_logic
    if riddle_params.downcase == @deity.answer #correct answer
      @user_body.defeat_deity(@deity)
      flash[:notice] = "The great #{@deity.name} has relinquished their world core to you. You won the #{@deity.core.essence} core!"
      if @user_body.has_all_cores?(@world)
        redirect_to @world and return #so it doesn't hit other redirect
      end
    else
      flash[:failure] = "That is incorrect you bumbling buffoon"
    end
    # byebug
    redirect_to world_deity_path(@world, @deity)
  end
end
