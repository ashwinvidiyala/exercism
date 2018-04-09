class Complement
  def self.of_dna(nucleotide)
    nucleotide =~ /[^CGTA]/ ? '' : nucleotide.tr('CGTA', 'GCAU')
  end
end

module BookKeeping
  VERSION  = 4
end
