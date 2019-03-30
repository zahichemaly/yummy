class RecipesController < ApplicationController
    def show
        @recipe = Recipe.find(params[:id])
      end

    def new
        @recipe = Recipe.new
    end
    
    def index
        @recipes = Recipe.all
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end

    def update
      @recipe = Recipe.find(params[:id])
      if @recipe.update_attributes(recipe_params)
          flash[:success] = "Recipe updated!"
          redirect_to :action => "recipe", :controller => "users"
      else
        render 'edit'
      end
    end

    def destroy
      Recipe.find(params[:id]).destroy
      flash[:success] = "Recipe deleted!"
      redirect_to :action => "recipe", :controller => "users"
    end

    def create
        @recipe = Recipe.new(recipe_params)   
        if @recipe.save
          flash[:success] = "Your recipe has been created!"
          redirect_to action: "new"
        else
          flash[:error] = "Please fill all the required fields and try again!"
          render 'new'
        end
      end

      def upvote 
        @recipe = Recipe.find(params[:id])
        @recipe.liked_by current_user
        redirect_to :action => "show"
      end  

      def downvote
        @recipe = Recipe.find(params[:id])
        @recipe.downvote_by current_user
        redirect_to :action => "show"
      end
    
     private
          def recipe_params
            params.require(:recipe).permit(:name, :description, :category, :url, :created_by, :ing1, :ing2, :ing3, :ing4, :ing5,
           :ins1, :ins2, :ins3, :ins4, :ins5, :time, :servings, :calories)
          end
end
