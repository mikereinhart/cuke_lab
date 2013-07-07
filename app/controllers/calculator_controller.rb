class CalculatorController < ApplicationController
  def add
    if params[:first] && params[:second]
      @add_answer = params[:first].to_f + params[:second].to_f
      render :add
    end
  end

  def subtract
    if params[:s_first] && params[:s_second]
      @subtract_answer = params[:s_first].to_f - params[:s_second].to_f
      render :subtract
    end
  end

  def multiply
    if params[:m_first] && params[:m_second]
      @m_answer = params[:m_first].to_f * params[:m_second].to_f
      render :multiply
    end
  end

  def divide
    if (params[:d_second].to_i != 0) && (params[:d_first] && params[:d_second])
      @d_answer = params[:d_first].to_f / params[:d_second].to_f
      render :divide
    elsif params[:d_second].to_i == 0
      @d_answer = 'Error: you cannot divide by zero.'
      render :divide
    end
  end
end