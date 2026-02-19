# frozen_string_literal: true

require "active_support/concern"

module Platform
  module AppendMigrations
    extend ActiveSupport::Concern

    included do
      engine_name = name.deconstantize.underscore.tr("/", "_")

      initializer "#{engine_name}.append_migrations" do |app|
        unless app.root.to_s.match?(root.to_s)
          config.paths["db/migrate"].expanded.each do |expanded_path|
            app.config.paths["db/migrate"] << expanded_path
          end
        end
      end
    end
  end
end
