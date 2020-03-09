# frozen_string_literal: true

class Author
  include Mongoid::Document
  include SimpleEnum::Mongoid
  include SimpleEnum::ViewHelpers

  field :name, type: String
  field :age, type: Integer

  as_enum :status, %i[pending available], prefix: true
  as_enum :gender, %i[female male], prefix: true

  def gender_i18n
    te(self, :gender)
  end

  def status_i18n
    te(self, :status)
  end
end
