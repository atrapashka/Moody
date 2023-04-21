
import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            HStack {
                                Text("Settings")
                                    .font(.custom("VAL", size: 25))
                                    .foregroundColor(Color(hex: 0x0077be))
                            }
                        }
                    }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
