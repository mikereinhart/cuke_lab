class CalculatorController < ApplicationController
  def add
    if params[:first] && params[:second]
      @answer = params[:first].to_i + params[:second].to_i
      render :add
    end
  end
end