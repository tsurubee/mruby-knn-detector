class KNN

  def dist(vec1, vec2)
    sum = 0
    vec1.each_with_index do |v, i|
      sum += (v - vec2[i])**2
    end
    return Math.sqrt(sum)
  end

end
