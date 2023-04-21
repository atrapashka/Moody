
import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Text("Profile")
                                    .font(.custom("VAL", size: 25))
                                    .foregroundColor(Color(hex: 0x0077be))
                                Spacer()
                                Text("Edit")
                                    .font(.system(size: 17))
                            }
                        }
                    }
                
                ZStack {
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 150, height: 150)
                                .foregroundColor(Color(hex: 0x006d5b))
                            Image("User")
                                .resizable()
                                .frame(width: 135, height: 135)
                                .clipShape(Circle())
                        }
                        Spacer()
                        VStack {
                            Text("AlehandroTrap")
                                .font(.system(size: 15, weight: .bold))
                            Spacer()
                            Text("Junior iOS Developer - currently looking for a remote job 🔥")
                                .opacity(0.8)
                                
                                
                        }
                        .padding(.vertical, 20)
                        Spacer()
                    }
                }

                HStack {
                    Text("Liked this week:")
                        .font(.custom("VAL", size: 20))
                        .foregroundColor(Color(hex: 0x0077be))
                }
            }
            .padding(.horizontal)
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
