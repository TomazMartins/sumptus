# ============================================================================
#                              ACTIVERECORD
# ============================================================================
require 'active_record'
require 'logger'

# Load all of ActiveRecord::Base objects
#
# load 'PATH TO ACTIVERECORD::BASE'
# load 'PATH TO ACTIVERECORD::BASE'
# load 'PATH TO ACTIVERECORD::BASE'
# load 'PATH TO ACTIVERECORD::BASE'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite3'
)

# Fix for locales deprecation error.
#
I18n.enforce_avaiable_locales = false

# For see SQL generated by ActiveRecord.
#
ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveSupport::LogSubscriber.colorize_logging = false