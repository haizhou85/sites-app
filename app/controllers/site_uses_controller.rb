class SiteUsesController < ApplicationController
    
    def create
        @site_use = SiteUse.new(site_use_params)
        if @site_use.save
            render json: @site_use
        else
            render json: @site_use.errors
        end
    end

    def destroy
        resource
        if @site_use.destroy
            render json: @site_use
        else
            render json: @site_use.errors
        end
    end

    def update
        resource
        if @site_use.update_attributes(site_use_params)
            render json: @site_use
        else
            render json: @site_use.errors
        end
    end

    private

    def resource
        @site_use = SiteUse.find(params[:id])
    end

    def site_use_params
        params.require(:site).permit(:size_sqft, :site_id, :use_type_id)
    end  
end
