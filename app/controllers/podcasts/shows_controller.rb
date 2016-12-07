require_dependency "podcasts/application_controller"

module Podcasts
  class ShowsController < ApplicationController
    before_action :set_show, only: [:show, :edit, :update, :destroy]

    # GET /shows
    def index
      @shows = Show.all
    end

    # GET /shows/1
    def show
    end

    # GET /shows/new
    def new
      @show = Show.new
    end

    # GET /shows/1/edit
    def edit
    end

    # POST /shows
    def create
      @show = Show.new(show_params)

      if @show.save
        redirect_to @show, notice: 'Show was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /shows/1
    def update
      if @show.update(show_params)
        redirect_to @show, notice: 'Show was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /shows/1
    def destroy
      @show.destroy
      redirect_to shows_url, notice: 'Show was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_show
        @show = Show.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def show_params
        params.require(:show).permit(:name, :email, :title, :description, :language, :copyright, :last_build_date, :explicit, :author, :summary, :subtitle, :primary_category, :secondary_category)
      end
  end
end
