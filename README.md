# :card_file_box: OOP Design Patterns Ruby Examples

This repo contains various examples of common design patterns for Object Oriented Programming written in Ruby. The goal is to show how to implement these patterns with Ruby which is dynamically typed, doesn't have interface, method overloading and other concepts that are present in a typical object-oriented language.

## Creational Design Patterns

- [Factory Method](creational/factory_method)
- [Abstract Factory](creational/abstract_factory)
- [Builder](creational/builder)
- [Prototype](creational/prototype)
- [Singleton](creational/singleton)

## Structural Design Patterns

- [Adapter](structural/adapter)
- [Bridge](structural/bridge)
- [Composite](structural/composite)
- [Decorator](structural/decorator)
- [Facade](structural/facade)
- [Flyweight](structural/flyweight)
- [Proxy](structural/proxy)

## Behavioral Design Patterns

- [Chain of Responsibility](behavioral/chain_of_responsibility)
- [Command](behavioral/command)
- [Iterator](behavioral/iterator)
- [Mediator](behavioral/mediator)
- [Memento](behavioral/memento)
- [Observer](behavioral/observer)
- [State](behavioral/state)
- [Strategy](behavioral/strategy)
- [Template Method](behavioral/template_method)
- [Visitor](behavioral/visitor)

## Usage and Testing

You can run each pattern with Ruby. For example:

`ruby -r './app.rb' -e 'Singleton::App.new.main'`

You can also run tests with RSpec. Tests are provided and located in `/spec`.

## Contributing

The examples here are open for improvement so feel free to report issues, add documentations, modify examples and send pull requests.
