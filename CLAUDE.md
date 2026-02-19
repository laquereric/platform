# Platform

Shared Rails engine infrastructure gem. Provides concerns included by all engines in the Ecosystems platform.

- **Platform::AppendMigrations** -- `ActiveSupport::Concern` included in engine classes; appends `db/migrate` paths to the host app at boot. Located in `lib/platform/append_migrations.rb`.
- **Platform::ApplicationRecordConcern** -- `ActiveSupport::Concern` included in engine `ApplicationRecord` classes; sets `abstract_class = true`. Located in `lib/platform/application_record_concern.rb`.

Entry point: `lib/platform.rb`. Dependency: `rails >= 7.1`.
