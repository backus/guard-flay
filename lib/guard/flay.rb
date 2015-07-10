require 'guard/compat/plugin'

module Guard
  class Flay < Plugin
    autoload :Processor, 'guard/flay/processor'

    def start; end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      Processor.process paths
    end
  end
end
