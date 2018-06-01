require "auto_json"

module Accord
  class Error
    include AutoJson

    field :attr, Symbol
    field :message, String

    def to_s
      if @attr == :base
        @message
      else
        "#{@attr.to_s} #{message}"
      end
    end
  end
end
