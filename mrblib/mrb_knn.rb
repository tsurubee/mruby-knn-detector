class KNN

  def score(data, w, k)
    windows = sliding_windows(data, w)
    w_size  = windows.length
    scores  = []

    w_size.times do |t|
      distances = []
      windows.each do |win|
        distances << dist(windows[t], win)
      end
      distances.sort!
      s = distances[-k..-1].inject(0.0){|r,i| r+=i} / k
      scores << s
    end
    return scores
  end

  def sliding_windows(data, w)
    num     = data.length - w + 1
    windows = []

    num.times do |t|
      windows << data[t, w]
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
