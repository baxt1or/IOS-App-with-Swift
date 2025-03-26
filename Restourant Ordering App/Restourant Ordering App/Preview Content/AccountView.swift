import SwiftUI

struct AccountPreview : View {
   
    var body : some View {
        NavigationView {
            Text("Account")
                .navigationTitle("My Profile")
        }
    }
}


struct AccountViews_Previews : PreviewProvider {
    static var previews : some View {
        AccountPreview()
    }
}
