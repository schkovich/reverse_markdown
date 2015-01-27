module ReverseMarkdown
  class Config
    attr_accessor :unknown_tags, :github_flavored, :syntax_highlight

    def initialize
      reset
    end

    def apply(options = {})
      options.each do |method, value|
        __send__(:"#{method}=", value)
      end
    end

    def reset
      @unknown_tags    = :pass_through
      @github_flavored = false
      @syntax_highlight = :plain
    end
  end
end
