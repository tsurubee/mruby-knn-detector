class KNN

  def sliding_windows(data, w)
    num     = data.length - w + 1
    start = 0
    windows = []

    num.times do
      windows << data[start, w]
      start += 1
    end
    return windows
  end

  def dist(vec1, vec2)
    sum = 0
    vec1.each_with_index do |v, i|
      sum += (v - vec2[i])**2
    end
    return Math.sqrt(sum)
  end

end
