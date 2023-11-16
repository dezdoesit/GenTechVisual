import SwiftUI

struct Chapter5View: View {
    @State var customAndroid = Android()
    var body: some View {
        NavigationStack {
            
        
            VStack {
                Text("Welcome to the Android Factory")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                    .padding()
                    .padding()
                
                Text("Here, you will design and create your own Android")
                    .padding()
                    .padding()
                
                Text("One Rule.")
                    .bold()
                Text("You can only choose two Android features.")
                Text("Choose wisely.")
                
                    .padding()
                    .padding()
                
                
                NavigationLink {
                    BrainView(customAndroid: $customAndroid)
                } label: {
                    Text("Click Here To Build Your Android")
                        .bold()
                        .font(.largeTitle)
                    
                }
            }
        }
    }

    
    
    
//    func () {
//            BrainView()
//                .tabItem {
//                    Label("Brain", systemImage: "")
//                }
//            HeartView()
//                .tabItem {
//                    Label("Heart", systemImage: "heart.circle")
//                }
//            EyeView()
//                .tabItem {
//                    Label("Eyes", systemImage: "eye")
//                }
//            ArmView()
//                .tabItem {
//                    Label("Arms", image: "star")
//                }
//            LegView()
//                .tabItem {
//                    Label("Legs", systemImage: "figure.walk.motion")
//                }
//        }
        
    }

#Preview {
    Chapter5View()
}
