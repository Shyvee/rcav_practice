class CalculationsController < ApplicationController
  def instructions
  end

  def square
        @numbers=params[:id].to_i
        @square=@numbers** 2.to_i
  end

  def sqrt
      @numbers=params[:id].to_i
      @sqrt=Math.sqrt(@numbers).to_i
  end

  def pmt
      @apr=params[:INTEREST_RATE].to_f
      @rate=@apr/100/12
      @nper=params[:NUMBER_OF_PAYMENTS].to_i
      @principal=params[:PRINCIPAL_VALUE].to_f
      @payment=@rate*@principal/(1-(1+@rate)**-@nper)
  end

end
