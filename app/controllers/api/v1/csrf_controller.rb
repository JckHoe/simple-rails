class Api::V1::CsrfController < ApplicationController
  def show
    render json: { csrfToken: form_authenticity_token }
  end
end
