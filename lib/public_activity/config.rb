
module PublicActivity
  # Class used to initialize configuration object.
  class Config
    attr_accessor :table_name
    attr_reader :orm

    def initialize
      @table_name = "activities"
      @orm        = :active_record
    end

    def orm=(orm)
      @orm = orm.to_sym
    end

    def enabled
      Thread.current["public_activity_enabled"].nil? ? true : Thread.current["public_activity_enabled"]
    end

    def enabled=(arg)
      Thread.current["public_activity_enabled"]=arg
    end
  end
end