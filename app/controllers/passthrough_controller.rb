class PassthroughController < ApplicationController
  def get
    response = RestClient.get params[:apiurl], {params: params[:params]}
    p response
    if params[:type] == "xml"
      response = Hash.from_xml(response).to_json
    elsif params[:type] == "json"
      response = response.to_json
    end
    render json: response
  end
end
