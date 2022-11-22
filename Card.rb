class Card 

    def initialiaze(face_value)
        @face_value = face_value
        @face_up = @face_value
        @face_down = " "
    end

    def hide
        @face_down
    end
end