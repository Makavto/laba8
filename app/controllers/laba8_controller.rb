class Laba8Controller < ApplicationController
  def input
  end

  def view
    @received = params[:v1]
    @received_index = params[:k]
    @result = !@received || @received.empty? ? 'Unknown!':calculate(params[:v1], params[:k])
  end
end

def calculate(massive, k)
  $sum = 0
  mas = massive.split(/[, ;]/).map(&:to_i).each do |el|
    if (el.to_f%3 == 0)
      $sum=$sum+el
    end
  end
  mas[k.to_i-1]=$sum
  return mas
end
