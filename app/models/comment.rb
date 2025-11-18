class Comment < ApplicationRecord
  before_save :filter_content,
              if: -> { forum.parental_control? },
              unless: -> { author.trusted? }
end
