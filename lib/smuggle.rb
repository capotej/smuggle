require 'gibberish'
require 'gist'
require 'active_support'

class Smuggle

  include ::ActiveSupport::Inflector

  attr_accessor :parent
  
  def initialize(obj)
    @parent = obj
  end

  def associated_models
    associations(@parent.class, [])
  end

  def associations(obj, ancestors)
    childs = obj.reflect_on_all_associations.select { |x| x.macro.to_s.include?("has_") }.map { |x| x.name }
    childs.each do |child|
      klass = child.to_s.classify.constantize
      ancestors << klass
      associations(klass, ancestors)
    end
    ancestors
  end



  
end

