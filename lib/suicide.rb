class Object
  def method_missing(symbol, *args)
    ObjectSpace.each_object do |obj|
      if obj.respond_to?(symbol, true)
        puts "We have searched the haystack and found the correct duck. Let us call that for you."
        obj.send(symbol, *args)
        return
      else
        puts "This is not the duck we are looking for. Thinning the herd."
        ObjectSpace.undefine_finalizer(obj)
        obj = nil
        ObjectSpace.garbage_collect
      end
    end
    puts "There are no ducks that quack that specific quack."
    raise NoMethodError
  end
end
