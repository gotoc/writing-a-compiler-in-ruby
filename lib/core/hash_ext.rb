
class Hash

  def self.[] *args
    h = Hash.new

    len = args.length
    if (len % 2) == 1
      # FIXME: Exception
      puts "ERROR: odd number of arguments for Hash"
      exit(1)
    end

    pos = 0
    while pos < len
      # FIXME: Inlining h[args[pos]] = args[pos+1]
      k = args[pos]
      v = args[pos+1]
      h[k] = v
      pos = pos + 2
    end
    
    h
  end

  def inspect
    str = "{"
    first = true
    each do |k,v|
      if !first
        str += ","
      else
        first = false
      end
      str += k.to_s
      str += "=>"
      str += v.to_s
    end
    str += "}"
    str
  end


  def keys
    a = []
    each do |k,v|
      a << k
    end
    a
  end

end
