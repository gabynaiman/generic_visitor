module GenericVisitor
  module Visitable
    def accept(visitor)
      visitor.visit self
    end
  end
end