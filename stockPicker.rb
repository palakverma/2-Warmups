def stock_picker(stockPrices)
	initVal = 0
	maxDif = 0
	bestBuyDay = 0
	bestSellDay = 0
	bestPair = Array.new(2)
	until initVal >= stockPrices.length do 
		nextVal = initVal 
		until nextVal >= stockPrices.length do 
			priceDif = stockPrices[nextVal] - stockPrices[initVal]
				if maxDif < priceDif 
					bestBuyDay = initVal
					bestSellDay = nextVal 
					maxDif = priceDif
					bestPair[0] = initVal
					bestPair[1] = nextVal
					maxDif = priceDif
				end 
			nextVal += 1
		end
		initVal += 1
	end
puts bestPair.to_s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
end 

puts "Enter an array of stock prices (example: [23, 12, 13]): "  
stockPrices = gets.chomp
stockPrices = eval(stockPrices) 
stock_picker(stockPrices)
