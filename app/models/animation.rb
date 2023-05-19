class Animation < ApplicationRecord
    has_one_attached :animation_image
    
    def get_image
      (animation_image.attached?) ? animation_image : 'no_image.jpg'
    end
end

