# frozen_string_literal: true

require_relative "platform/version"
require_relative "platform/append_migrations"
require_relative "platform/application_record_concern"

module Platform
  class Error < StandardError; end
end
