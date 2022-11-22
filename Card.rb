class Card 
    attr_reader :face_value
    def initialize(face_value)
        @face_value = face_value
        @face_down = " "
        @revealed = false
    end

    def hide
        @face_down
    end

    def reveal
        @face_value
    end

    def ==(other_card)
        self.face_value == other_card.face_value
    end

    def .to_s
        face_value
    end


end