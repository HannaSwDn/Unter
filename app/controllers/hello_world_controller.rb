# frozen_string_literal: true

class HelloWorldController < ApplicationController
  skip_before_action :verify_authenticity_token

  layout "hello_world"

  def index
    @user = Username.last
    if @user
      @hello_world_props = { name: @user.name }
    else
      @hello_world_props = { name: "Stranger" }
    end
  end

  def create
    @name = Username.new(user_params)
    @name.save
    redirect_to root_path
  end

  private

  def user_params
    params.require(:hello_world).permit(:name, :id, :created_at, :updated_at)
  end
end
