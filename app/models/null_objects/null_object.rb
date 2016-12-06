module NullObjects
  class NullObject
    private

    def method_missing(*args, &block)
      nil
    end
  end
end
