import SwiftUI

struct OrderListPreview : View {
   
    var body : some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("Approved")
        }
    }
}


struct OrderListViews_Previews : PreviewProvider {
    static var previews : some View {
        OrderListPreview()
    }
}
