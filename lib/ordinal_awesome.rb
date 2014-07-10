require "ordinal_awesome/version"

module OrdinalAwesome
  ONES = %w(first
        second
        third
        fourth
        fifth
        sixth
        seventh
        eighth
        ninth)

  TEENS = %w(eleventh
          twelfth
          thirteenth
          fourteenth
          fifteenth
          sixteenth
          seventeenth
          eighteenth
          nineteenth)

  TENS = %w(ten
          twenty
          thirty
          fourty
          fifty
          sixty
          seventy
          eighty
          ninety)

  def self.generate_ordinals
    ordinals = []

    for n in 2..99 do
      ordinal_string = ""
      tens = n / 10
      ones = n % 10

      if tens > 1
        if ones > 0
          ordinal_string = "#{TENS[tens - 1]}_#{ONES[ones - 1]}"
        else
          ordinal_string = TENS[tens - 1].gsub('y', 'ieth')
        end

      elsif tens == 1
        if ones > 0
          ordinal_string = TEENS[ones - 1]
        else
          ordinal_string = "#{TENS[ones]}th"
        end

      elsif tens == 0
        ordinal_string = ONES[ones - 1]
      end

      ordinals << ordinal_string
    end

    ordinals
  end

  self.generate_ordinals.each_with_index do |ordinal, index|
    Array.class_eval <<-END
      def #{ordinal}
        self[#{index + 1}]
      end
    END
  end
end
