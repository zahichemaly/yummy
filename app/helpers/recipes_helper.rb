module RecipesHelper
    
  def list_all
    @recipes = Recipe.all
  end

  def filter_by(c)
    @recipes = Recipe.where(category: c)
  end

  def get_name(userID)
     @user_name = User.find_by(id: userID).name
  end

end
