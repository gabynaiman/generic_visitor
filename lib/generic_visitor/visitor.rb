module GenericVisitor
  class Visitor

    def self.visitor_for(*klasses, &block)
      klasses.each do |klass|
        klass.send :include, Visitable unless klass.instance_methods.include? :accept
        define_method(:"visit_#{klass.name}", block)
      end
    end

    def visit(thing)
      thing.class.ancestors.each do |ancestor|
        method_name = :"visit_#{ancestor.name}"
        next unless respond_to? method_name
        return send method_name, thing
      end

      raise "Can't handle #{thing.class}"
    end

  end
end