class GetClosestDaes
  def initialize(user_position)
    @user_position = user_position
  end

  def call
    @dae_list = Dae.within(0.3, origin: @user_position).all
  end
end
