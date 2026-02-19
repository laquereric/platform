# frozen_string_literal: true

require_relative "library_platform/version"
require_relative "library_platform/append_migrations"
require_relative "library_platform/application_record_concern"

module LibraryPlatform
  class Error < StandardError; end
end
