import SwiftUI

struct HomePreview : View {
   
    var body : some View {
        NavigationView {

            
            List(MockData.orders, id: \.id) { order in
                HStack {
                    Image("pizza-image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(8)
                        
                    VStack(alignment: .leading, spacing: 8) {
                        Text(order.name)
                            .font(.system(size:22, weight: .medium, design: .default))
                        Text("$\(order.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                    }
                    .padding(.leading)
                    
                }
            }
            .navigationTitle("Home")
        }
    }
}


struct HomeViews_Previews : PreviewProvider {
    static var previews : some View {
        HomePreview()
    }
}
