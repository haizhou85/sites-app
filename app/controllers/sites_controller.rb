class SitesController < ApplicationController
    def index
        @sites = Site.all
        if params[:zipcode].blank?
            render json: @sites
        else
            render json: @sites.where(zipcode: params[:zipcode]) 
        end
    end

    def show
        resource
        render json: @site
    end

    def create
        @site = Site.new(site_params)
        if @site.save
            render json: @site
        else
            render json: @site.errors
        end
    end

    def destroy
        resource
        if @site.destroy
            render json: @site
        else
            render json: @site.errors
        end
    end

    def update
        resource
        if @site.update_attributes(site_params)
            render json: @site
        else
            render json: @site.errors
        end
    end

    private

    def resource
        @site = Site.find(params[:id])
    end

    def site_params
        params.require(:site).permit(:name, :address, :state, :zipcode, :city)
    end    
end
