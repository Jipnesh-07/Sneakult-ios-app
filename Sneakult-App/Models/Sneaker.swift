import Foundation

struct Sneaker {
    var productId: UUID
    var productName: String
    var brand: String
    var category: String
    var size: String
    var color: String
    var isBoxAvailable: Bool
    
    
    init(productId: UUID, productName: String, brand: String, category: String, size: String, color: String, isBoxAvailable: Bool) {
        self.productId = productId
        self.productName = productName
        self.brand = brand
        self.category = category
        self.size = size
        self.color = color
        self.isBoxAvailable = isBoxAvailable
        
    }
    
    
    
    
}

class Sneakers{
    var sneakers : [Sneaker] = []
    init(){
        let sneaker1 = Sneaker(productId: UUID(), productName: "Nike Air Force 1", brand: "Nike", category: "Sneakers", size: "US 10", color: "White", isBoxAvailable: true)
        
        let sneaker2 = Sneaker(productId: UUID(), productName: "Adidas Stan Smith", brand: "Adidas", category: "Sneakers", size: "US 9", color: "Green", isBoxAvailable: false)
        
        let sneaker3 = Sneaker(productId: UUID(), productName: "Jordan 1 Retro High", brand: "Jordan", category: "Sneakers", size: "US 11", color: "Black/Red", isBoxAvailable: true)
        sneakers.append(contentsOf: [sneaker1,sneaker2,sneaker3])
    }
    
    func getSneakers() -> [Sneaker]{
        return sneakers
    }

    
}


