require_dependency 'enum'

class InvalidAdLevel < StandardError; end

class AdLevel

  attr_reader :id, :name

  class << self

    def [](level)
      raise InvalidAdLevel if !valid?(level)
      level
    end

    def levels
      @levels ||= Enum.new(:ad_sense, :revive, :custom_url, start: 0)
    end

    def all
      levels.map do |name_key, id|
        AdLevel.new(name_key, id)
      end
    end

    def valid?(level)
      valid_range === level
    end

    def valid_range
      (0..3)
    end

    def compare(current_level, level)
      (current_level || 0) >= level
    end

  end

  def initialize(name_key, id)
    @name = I18n.t("ad_levels.#{name_key}.title")
    @id = id
  end

  def serializable_hash
    { id: @id, name: @name }
  end

end
