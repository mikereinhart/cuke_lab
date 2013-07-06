class CalculatorController < ApplicationController
  def add
    if params[:first] && params[:second]
      @add_answer = params[:first].to_i + params[:second].to_i
      render :add
    end
  end

  def subtract
    if params[:s_first] && params[:s_second]
      @subtract_answer = params[:s_first].to_i - params[:s_second].to_i
      render :subtract
    end
  end

  def multiply
    if params[:m_first] && params[:m_second]
      @m_answer = params[:m_first].to_i * params[:m_second].to_i
      render :multiply
    end
  end
end