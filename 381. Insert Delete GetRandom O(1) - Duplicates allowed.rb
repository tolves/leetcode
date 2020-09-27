class RandomizedCollection

    #begin
    #    Initialize your data structure here.
    #end
        def initialize()
            @col = []
        end
    
    
    #begin
    #    Inserts a value to the collection. Returns true if the collection did not already contain the specified element.
    #    :type val: Integer
    #    :rtype: Boolean
    #end
        def insert(val)
            res = @col.index val
            @col.push val
            return false if res
            true
        end
    
    
    #begin
    #    Removes a value from the collection. Returns true if the collection contained the specified element.
    #    :type val: Integer
    #    :rtype: Boolean
    #end
        def remove(val)
            index = @col.index val
            if index
                @col.delete_at index
                return true
            end
            false
        end
    
    
    #begin
    #   Get a random element from the collection.
    #    :rtype: Integer
    #end
        def get_random()
            prng = Random.new
            if @col.any?
                return @col[prng.rand(0..@col.length-1)]
            end
            false
        end
    end
    
    # Your RandomizedCollection object will be instantiated and called as such:
    # obj = RandomizedCollection.new()
    # param_1 = obj.insert(val)
    # param_2 = obj.remove(val)
    # param_3 = obj.get_random()


    obj = RandomizedCollection.new
    puts param_1 = obj.insert(1)
    puts param_1 = obj.insert(1)
    puts param_2 = obj.remove(1)
    puts param_3 = obj.get_random