class Hamming

  def self.compute(reference, examinee)

    hamming_distance = 0

    (0..reference.length).each do |string_index|
      if examinee[string_index] != reference[string_index]
        hamming_distance += 1
      end
    end

    hamming_distance
    
  end

end
