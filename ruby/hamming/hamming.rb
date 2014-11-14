class Hamming
  def self.compute(reference, examinee)
    hd = HammingDistance.new(reference: reference, examinee: examinee)
    hd.distance
  end
end


class HammingDistance

  attr_reader :reference, :examinee, :distance

  def initialize(args={})
    @reference = args[:reference]
    @examinee = args[:examinee]
    @distance = 0
    calculate_length
  end

  def calculate_length
    (0..pairs_to_count).each do |string_index|
      if examinee[string_index] != reference[string_index]
        increment_distance
      end
    end
  end

  def increment_distance
    @distance += 1
  end

  def pairs_to_count
    if reference.length > examinee.length
      pairs = examinee.length
    else
      pairs = reference.length
    end
    pairs -= 1    
  end

end


