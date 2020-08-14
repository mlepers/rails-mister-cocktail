class ApplicationController < ActionController::Base
    before_action :set_cocktails

    private

    def set_cocktails
        @cocktails = Cocktail.all
    end
end
