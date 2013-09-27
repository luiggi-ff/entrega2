class purchase
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

                    def total()
                                total=0.0
                                        @products.each {|prod| sum+= prod[2]}
                                                total
                                                    end

                        def apply




                        end
                                    
