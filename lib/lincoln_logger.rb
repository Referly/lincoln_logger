require 'logger'
module LincolnLogger
  class << self
    attr_accessor :logger, :name

    def logger
      @name ||= "LincolnLogger"
      @logger ||= build_logger
    end

    private

    def build_logger
      logger = ::Logger.new(STDOUT)
      logger_name = name

      ENV['RACK_ENV'] = 'development' if ENV['RACK_ENV'].nil?

      logger.formatter = proc do |severity, datetime, progname, msg|
        "#{datetime} #{logger_name}:#{ENV['RACK_ENV']} [#{severity}]: #{msg}\n"
      end
      logger
    end
  end
end