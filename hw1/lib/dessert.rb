class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def calories=(cal)
    @calories = cal
  end
  def calories
   @calories
  end
  def name=(name)
    @name = name
  end
  def name
    @name
  end

  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end
  def delicious?
    return true
  end

end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = "#{@flavor} jelly bean"
    @calories = 5
  end
  def delicious?
     if @flavor == 'licorice'
       return false
     else
        super
     end
  end
end
