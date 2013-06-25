module ActiveRecord
  module UnsignedColumn
  end
end

# load Rails/Railtie
begin
  require 'rails'
rescue LoadError
  # do nothing
end

if defined? Rails && defined?(ActiveRecord::ConnectionAdapters::AbstractMysqlAdapter)
  require 'activerecord-unsigned-column/railtie'
end
