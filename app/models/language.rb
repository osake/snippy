class Language < ActiveRecord::Base
  include Cacheable

  # Plugins
  @@cache_records = true

  # Relationships
  has_many :snippets

  # Validations
  validates_length_of :name, :minimum => 1

  # Scopes
  named_scope :with_snippets, :conditions => "snippets_count > 0"
end
