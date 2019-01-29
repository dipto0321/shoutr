class API::V1::ShoutsController < ApplicationController
  def show
    @shout = Shout.find_by(id: params[:id])
    respond_to @shout.as_json(root: true)
  end
end
