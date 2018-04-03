class KNN

  def initialize(w, k)
    @w = w.to_i
    @k = k.to_i
  end

  def score(data)
    windows = sliding_windows(data)
    w_size  = windows.length
    scores  = []

    w_size.times do |t|
      distances = []
      windows.each do |win|
        distances << dist(windows[t], win)
      end
      distances.sort!
      s = distances[1..@k].inject(0.0){|r,i| r+=i} / @k
      scores << s
    end
    # Adjust the size of input/output array
    return Array.new(@w-1, 0) + scores
  end

  def sliding_windows(data)
    num     = data.length - @w + 1
    windows = []

    num.times do |t|
      windows << data[t, @w]
    end
    return windows
  end

  def dist(vec1, vec2)
    sum = 0
    vec1.each_with_index do |v, i|
      sum += (v - vec2[i]) * (v - vec2[i])
    end
    Math.sqrt(sum)
  end

end
