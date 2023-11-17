import SwiftUI



enum Gender {
    case male, female, nonBinary
}

struct Survivor {
    var name: String
    var gender: Gender
    var age: Int
    var isLeader: Bool
}

struct Enemy {
    var name: String
    var isDefeated: Bool
}

struct Chapter4View: View {
    
    let index = 0
    
    var enemies: [Enemy] = [
        Enemy(name: "Denard", isDefeated: false),
        Enemy(name: "Dez", isDefeated: false),
        Enemy(name: "Calab", isDefeated: false)
    ]
    var body: some View {
        let survivors: [Survivor] = [
            Survivor(name: "Molly", gender: .female, age: 17, isLeader: true),
            Survivor(name: "Elder Survivor", gender: .male, age: 50, isLeader: false)]
            // Add more survivors as needed
        Text("Chapter 4")
        ScrollView {
            
         
            Image("photo1")
                .resizable()
                .scaledToFit()
            Text("Ever since then, we don't know who will come out on top. Climate change, economic collapse, and political unrest had plunged society into a dystopian nightmare. The once vibrant cities now lay in ruins, consumed by decay and despair. People struggled to survive in a world where resources are scarce, and hope is a rare commodity.")
            
            Image ("photo2")
                .resizable()
                .scaledToFit()
            Text("Amongst this bleak landscape, a young girl named \(survivors[0].name) lived in a small makeshift shelter with her family. They managed to carve out a skimpy existence, scavenging for food and clean water. \(survivors[0].name), however, was different. She possessed a natural curiosity and an unwavering spirit, refusing to accept the grim reality that surrounded them.")
            Image ("photo3")
                .resizable()
                .scaledToFit()
        
                Text("One day while exploring an old collapsed building, \(survivors[0].name) stumbled upon a hidden room filled with ancient books. It was a treasure stockpile, a nest egg, and a trove of knowledge long forgotten.")
                     Text("When \(survivors[0].name) explored the pages of these books, she discovered tales of a time when the world was different, when people lived in harmony with nature and each other from the north, south, east, and west.")
                     Text("Encouraged, inspired, and motivated by these stories, \(survivors[0].name) embarked on a mission to bring hope back to her community. Armed with knowledge from the books, ")
                Image ("photo4")
                    .resizable()
                    .scaledToFit()
                     
                     Text("However, not everyone was pleased with these changes. A group of ruthless scavengers led by a cunning leader named \(enemies[0].name) and his gang launched a brutal attack on the community.")
                     Text("In the face of this danger, \(survivors[0].name) rallied her people, urging them to stand strong and united.")
                      Text("With courage and ingenuity, they defended their newfound way of life. The battle was fierce, but the spirit of cooperation, determination, and hope prevailed.")
                     
                     Text("\(enemies[0].name) and his squad were defeated, but the community remained vigilant, aware of the lurking threats from his evil cousins \(enemies[1].name) and \(enemies[2].name).")
            }
    }
        
        
        
    }
#Preview {
    Chapter4View()
}
