
import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            HStack {
                                Text("Favorites")
                                    .font(.custom("VAL", size: 25))
                                    .foregroundColor(Color(hex: 0x0077be))
                            }
                        }
                    }
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
