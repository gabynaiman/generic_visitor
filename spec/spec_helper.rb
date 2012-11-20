require 'generic_visitor'

class Country < Struct.new(:name)
  def as_hash
    accept AsHash.new
  end
end

class City < Struct.new(:name, :country)
  def as_hash
    accept AsHash.new
  end
end

class AsHash < GenericVisitor::Visitor

  visitor_for Country do |country|
    {name: country.name}
  end

  visitor_for City do |city|
    {
        name: city.name,
        country: city.country.as_hash
    }
  end

end