class DosesController < ApplicationController

    def create
        @dose = Dose.new(dose_params)
        @cocktail = Cocktail.find(params[:cocktail_id])
        unless @dose.ingredient_id.nil?
            @ingredient = Ingredient.find(@dose.ingredient_id)
        end

        @dose.cocktail =  @cocktail
        @dose.ingredient = @ingredient

        if @dose.save
            redirect_to cocktail_path(@cocktail)
        else
            render "cocktails/show"
        end
    end

    def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
        redirect_to cocktail_path(@dose.cocktail)
    end
    


    private

    def dose_params
        params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
    end
    
end






  