# LibraryPlatform

Shared Rails engine infrastructure gem. Provides concerns included by all engines in the Ecosystems platform.

- **LibraryPlatform::AppendMigrations** -- `ActiveSupport::Concern` included in engine classes; appends `db/migrate` paths to the host app at boot. Located in `lib/library_platform/append_migrations.rb`.
- **LibraryPlatform::ApplicationRecordConcern** -- `ActiveSupport::Concern` included in engine `ApplicationRecord` classes; sets `abstract_class = true`. Located in `lib/library_platform/application_record_concern.rb`.

Entry point: `lib/library_platform.rb`. Dependency: `rails >= 7.1`.
