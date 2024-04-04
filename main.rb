def add(a,b)
  
  if a.nil? or b.nil?
    raise TypeError, "No bloody nils thanks"
  end

  if a.class != Integer or b.class != Integer
    raise TypeError, "No bloody strings thanks"
  end
  
  a + b
end
