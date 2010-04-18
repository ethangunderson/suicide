class Object
  def method_missing(symbol, *args)
    ObjectSpace.each_object do |obj|
      if obj.respond_to?(symbol, true)
        puts "Whoops, you must have meant to call #{symbol.to_s} on #{obj.to_s}. Let me take care of that for you."
        obj.send(symbol, *args)
        return
      end
    end
    raise NoMethodError
  end
end