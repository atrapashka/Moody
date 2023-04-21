
import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            HStack {
                                Text("Explore")
                                    .font(.custom("VAL", size: 25))
                                    .foregroundColor(Color(hex: 0x0077be))
                            }
                        }
                    }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
