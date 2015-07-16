require 'guard/compat/plugin'
require 'guard'

module Guard
  class Flay < Plugin
    autoload :Processor, 'guard/flay/processor'

    def start
      ::Guard::UI.info 'Guard::Flay is running'
    end

    def reload; end

    def run_all
      Processor.process Dir['./**/*.rb']
    end

    def run_on_changes(paths)
      Processor.process paths
    end
  end
end
