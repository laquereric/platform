# frozen_string_literal: true

module Platform
  VERSION = File.read(File.expand_path("../../VERSION", __dir__)).strip.freeze
end
