import Foundation

struct Sneaker {
    var productId: UUID
    var productName: String
    var productImage: String
    var brand: String
    var category: String
    var size: String
    var salePrice: Int
    var bidPrice: Int

    
    
    init(productId: UUID, productName: String,productImage: String, brand: String, category: String, size: String, salePrice: Int, bidPrice: Int) {
        self.productId = productId
        self.productName = productName
        self.productImage = productImage
        self.brand = brand
        self.category = category
        self.size = size
        self.bidPrice = bidPrice
        self.salePrice = salePrice
        
    }
    
    
    
    
}

class Sneakers{
    var sneakers : [Sneaker] = []
    init(){
        let sneaker1 = Sneaker(productId: UUID(), productName: "Nike Air Force 1", productImage: "image1", brand: "Nike", category: "Sneakers", size: "US 10", salePrice: 500, bidPrice: 190)
        
        let sneaker2 = Sneaker(productId: UUID(), productName: "Adidas Stan Smith", productImage: "image1", brand: "Adidas", category: "Sneakers", size: "US 9", salePrice: 190, bidPrice: 180)
        
        let sneaker3 = Sneaker(productId: UUID(), productName: "Jordan 1 Retro High", productImage: "image1", brand: "Jordan", category: "Sneakers", size: "US 11", salePrice: 560, bidPrice: 500)
        sneakers.append(contentsOf: [sneaker1,sneaker2,sneaker3])
    }
    
    func getSneakers() -> [Sneaker]{
        return sneakers
    }

    
}


