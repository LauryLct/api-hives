# frozen_string_literal: true

module Api
  module V1
    # app/controllers/api/v1/hives_controller.rb
    class HivesController < ApplicationController
      before_action :set_hive, only: %i[show]

      def index
        @hives = Hive.all

        render json: @hives
      end

      def show
        render json: @hive
      end

      def create
        @hive = Hive.new(hive_params)

        if @hive.save
          render json: @hive, status: :created
        else
          render_error
        end
      end

      private

      def set_hive
        @hive = Hive.find(params[:id])
      end

      def hive_params
        params.require(:hive).permit(:name, :weight)
      end

      def render_error
        render json: { errors: @hive.errors.full_messages },
               status: :unprocessable_entity
      end
    end
  end
end
