class Purchase
    attr_reader :products
    attr_accessor= :total

    def initialize
        @products=Array.new
        @total=0.0
    end

    def add (aProduct)
        @products.push(aProduct)
        @total+=aProduct.price
    end

    def delete(aProduct)        
        @products.delete(aProduct)
        @total-=aProduct.price
    end

    def total
        @total
    end

    def total=(number)
        #total=0
        #@products.each {|prod| total+= prod.price}
        @total=number
        #block.call(@total) if block_given?
        return @total
    end

    def apply_discount (&discount)
        discount.call(self)
    end



end


class Product
    attr_reader :code
    attr_reader :name
    attr_reader :price
    def initialize (code,name,price)
        @code=code
        @name=name
        @price=price.to_f
    end
end

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

#p.delete p1

puts p.total


p.apply_discount do |purchase|
  hammers = purchase.products.collect { |product| product.code == '01' }
  purchase.total -= purchase.total * 0.1 if hammers.any?
end


puts p.total






p4=Purchase.new

p4.add p1
p4.add p2
p4.add p1
p4.add p2
p4.add p1
p4.add p2
p4.add p1
p4.add p2
p4.add p1
p4.add p2
p4.add p1
p4.add p2
puts p4.total

p4.apply_discount do |purchase|

  purchase.total -= purchase.total * 0.2 if purchase.products.length>10
end

puts p4.total







p3=Purchase.new
p3.add p1
p3.add p2
p3.add p1
p3.add p2
p3.add p1
p3.add p2
p3.add p1
p3.add p2
p3.add p1
p3.add p2

puts p3.total

p3.apply_discount do |purchase|
  counts = purchase.products.group_by{|i| i}.map{|k,v| [k, v.count] }
  counts.each {|ar| purchase.total-=ar[0].price*(ar[1]/3) if ar[1]>3}
end

puts p3.total



