
import SwiftUI

struct AppView: View {
    
    @State var selectedTab = "Explore"
    
    let tabs = ["Explore", "Settings", "Favorites", "Profile"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                ExploreView()
                    .tag("Explore")
                SettingsView()
                    .tag("Settings")
                FavoriteView()
                    .tag("Favorites")
                ProfileView()
                    .tag("Profile")
            }
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Spacer()
                    TabBarItem(tab: tab, selected: $selectedTab)
                    Spacer()
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity)
            .background(Color(hex: 0xd3d3d3))
        }
    }
}

struct TabBarItem: View {
    @State var tab: String
    @Binding var selected: String
    
    var body: some View {
        if tab == "Profile" {
            Button {
                withAnimation(.spring()) {
                    selected = tab
                }
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 42, height: 42)
                        .foregroundColor(selected == tab ? Color(hex: 0xffffff) : .clear)
                    Image("User")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                }
            }
        } else {
            ZStack {
                Button {
                    withAnimation(.spring()) {
                        selected = tab
                    }
                } label: {
                    HStack {
                        Image(tab)
                            .resizable()
                            .frame(width: 25, height: 25)
                        if selected == tab {
                            Text(tab)
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(.black)
                                .opacity(0.85)
                        }
                    }
                }
                
            }
            .opacity(selected == tab ? 1 : 0.7)
            .padding(.vertical, 10)
            .padding(.horizontal, 17)
            .background(selected == tab ? Color(hex: 0xffffff) : .clear)
            .clipShape(Capsule())
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
