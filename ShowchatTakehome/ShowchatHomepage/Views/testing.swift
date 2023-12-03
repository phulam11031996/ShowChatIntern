import SwiftUI

struct testing: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .overlay(
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                            .opacity(searchText.isEmpty ? 1 : 0)
                    )
                
                if !searchText.isEmpty {
                    Button(action: {
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 8)
                }
            }
            
            Text("Tooltip: Clear Search")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

    static var previews: some View {
        ContentView()
    }
