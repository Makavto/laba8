class Laba8Controller < ApplicationController
  def input
  end

  def view
    @received = params[:v1]
    @result = calculate(params[:v1])
    # puts @result
  end
end

def calculate(massive)
  kol = 0;

  def stepen(x)
      a = 1
      while a<=x
          a = a * 5
          if a == x then
              return true
          end
      end 
      return false;
  end

  segment = Array[];
  segmentsHash = Hash.new => {};
  j = 0;
  max = Array[];
  mas = massive.split(/[, ;]/).map(&:to_i)
  mas.each_index do |i|
      if (mas[i+1]!=nil && stepen(mas[i]) && stepen(mas[i+1]))
          segment.push(mas[i])
      elsif (mas[i-1]!=nil && stepen(mas[i]) && stepen(mas[i-1]))
          segment.push(mas[i])
      end
      if ((mas[i+1]!=nil && !stepen(mas[i+1]) && !segment.empty?) || (mas[i+1] == nil && !segment.empty?))
          segmentsHash[j] = segment;
          j = j+1;
          kol = kol+1;
          if (segment.length > max.length)
              max = segment
          end
          segment = []
      end
  end
  if (kol>0)
    result = [segmentsHash, kol, max]
  else
    result = 0
  end
  return result
end
