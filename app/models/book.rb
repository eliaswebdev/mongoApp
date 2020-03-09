class Book
  include Mongoid::Document
  include SimpleEnum::Mongoid

  ## FIELDS
  field :title, type: String

  ## ASSOCIATIONS
  belongs_to :author, optional: true

  ## ENUMS
  as_enum :status, %i[pending enabled disabled], prefix: true
end
