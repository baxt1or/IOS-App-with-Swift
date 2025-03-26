

import Foundation


struct Order : Decodable {
    
    let id : Int
    let name : String
    let describtion : String
    let price : Double
    let imageURL : String
    let calories : Int
    let carbs : Int
    
}


struct OrderResponse {
    let request : [Order]
}


struct MockData {
    
    static let order = Order(id:1,
                      name:"Pizza Appitezer",
                      describtion: "Very nice to try",
                      price : 3.4,
                      imageURL: "",
                      calories: 12,
                      carbs: 14)
    
    static let orders = [order, order, order, order]
}
