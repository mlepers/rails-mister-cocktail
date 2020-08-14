class CocktailsController < ApplicationController

    before_action :set_cocktail, only: [:show, :edit, :update]

    def index
        @cocktails = Cocktail.all
    end

    def show
        @dose = Dose.new
    end

    def new
        @cocktail = Cocktail.new
    end

    def create
        @cocktail = Cocktail.new(cocktail_params)
        if @cocktail.save
            redirect_to @cocktail, notice: 'Cocktail was successfully created.'
          else
            render :new
          end
    end

    def update
        if @cocktail.update(cocktail_params)
          redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
        else
          render :edit
        end
      end

    private

    def set_cocktail
        @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(:name, :image_url, :photo)
    end

end
