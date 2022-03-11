class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title

  def short_content
    "#{self.object.content[0..39]}..."
  end

  has_many :tags
end
