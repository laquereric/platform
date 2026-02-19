# LibraryPlatform

Shared Rails engine infrastructure for the Ecosystems platform. Provides reusable concerns that all engines include to integrate with the host application.

## Installation

Add to your Gemfile:

```ruby
gem "library-platform", path: "../../library/library-platform"
```

Then:

```
bundle install
```

## Concerns

### LibraryPlatform::AppendMigrations

Included in an engine class to automatically append the engine's migrations to the host application's migration paths at boot time.

```ruby
module MyEngine
  class Engine < ::Rails::Engine
    include LibraryPlatform::AppendMigrations
    isolate_namespace MyEngine
  end
end
```

### LibraryPlatform::ApplicationRecordConcern

Included in an engine's `ApplicationRecord` base class to mark it as an abstract class.

```ruby
module MyEngine
  class ApplicationRecord < ActiveRecord::Base
    include LibraryPlatform::ApplicationRecordConcern
  end
end
```

## Development

```
bundle install
bundle exec rake spec
```

## License

MIT License. See [LICENSE.txt](LICENSE.txt).
