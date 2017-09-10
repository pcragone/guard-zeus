require 'guard/compat/plugin'

module Guard
  class Zeus < Plugin
    autoload :Runner, 'guard/zeus/runner'
    attr_accessor :runner

    def initialize(options = {})
      super
      @runner = Runner.new(options)
    end

    def start
      runner.kill_zeus
      runner.launch_zeus('Start')
    end

    def stop
      runner.kill_zeus
    end

    def reload
      runner.kill_zeus
      runner.launch_zeus('Reload')
    end

    # do nothing
    def run_all
    end

    def run_on_modifications(paths)
      reload()
    end

    def run_on_additions(paths)
      reload()
    end

    def run_on_removals(paths)
      reload()
    end
  end
end
