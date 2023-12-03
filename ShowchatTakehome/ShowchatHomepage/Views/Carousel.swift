import SwiftUI

struct TVShowPoster: Identifiable {
    var id = UUID()
    var showName: String
    var userNames: [String]
}

struct Carousel: View {
    let tvShowPosters: [TVShowPoster] = [
        TVShowPoster(showName: "all-the-light-we-cannot-see", userNames: ["user1", "user2", "user3", "user4", "user5", "user1"]),
        TVShowPoster(showName: "beef", userNames: ["user3", "user4", "user5"]),
        TVShowPoster(showName: "indian_matchmaking", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        TVShowPoster(showName: "love-is-blind", userNames: ["user1", "user3", "user4", "user5"]),
        TVShowPoster(showName: "love-island-2019", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        TVShowPoster(showName: "queer-eye", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        TVShowPoster(showName: "selling-sunset", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        TVShowPoster(showName: "suits", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        TVShowPoster(showName: "the-circle", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        TVShowPoster(showName: "the-great-british-bake-off", userNames: ["user1", "user2", "user3", "user4", "user5"]),
        // Add more TV show posters as needed
    ]
    
    var body: some View {
          GeometryReader { geometry in
              VStack(alignment: .leading) {
                  Text("POPULAR SHOWCHATS")
                      .font(.title2)
                      .foregroundColor(.white)
                      .padding(.horizontal)
                      .padding(.top)
                      .frame(height: geometry.size.height * 0.1)

                  ScrollView(.horizontal, showsIndicators: false) {
                      HStack(spacing: geometry.size.width * 0.1) {
                          ForEach(tvShowPosters) { poster in
                              ZStack(alignment: .bottomTrailing) {
                                  Image(poster.showName)
                                      .resizable()
                                      .scaledToFill()
                                      .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.9)
                                      .cornerRadius(30)
                                  
                                  HStack(spacing: geometry.size.width * (-0.05)) {
                                      ForEach(poster.userNames.prefix(4), id: \.self) { userName in
                                          let index = poster.userNames.firstIndex(of: userName) ?? 0
                                          ZStack {
                                              Image(userName)
                                                  .resizable()
                                                  .frame(width: geometry.size.width * 0.15, height: geometry.size.width * 0.15)
                                                  .clipShape(Circle())
                                                  .overlay(RoundedRectangle(cornerRadius: 50)
                                                      .stroke(Color.white, lineWidth: 2))
                                              let isLast = index == 3
                                              let userLeft = poster.userNames.count - index - 1
                                              if isLast && userLeft > 0 {
                                                  Text("+\(userLeft)")
                                                      .foregroundColor(.white)
                                                      .fontWeight(.bold)
                                              }
                                          }
                                      }
                                  }
                                  .padding(.bottom, -15)
                              }
                          }
                      }
                      .padding()
                  }
                  .frame(height: geometry.size.height * 0.9)
              }
          }
      }
  }

#Preview {
    Carousel()
}
