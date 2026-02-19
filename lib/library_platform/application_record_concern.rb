# frozen_string_literal: true

require "active_support/concern"

module LibraryPlatform
  module ApplicationRecordConcern
    extend ActiveSupport::Concern

    included do
      self.abstract_class = true
    end
  end
end
