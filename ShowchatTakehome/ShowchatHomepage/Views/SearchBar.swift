import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                TextField("", text: $searchText)
                    .foregroundColor(.gray)
                    .placeholder(when: searchText.isEmpty) {
                        Text("Show & season you're watching").foregroundColor(.gray)
                    }
                Button(action: {
                    searchText = ""
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                }
            }
            .frame(height: geometry.size.height)
            .padding(.horizontal)
            .background(Color(red: 38 / 255.0, green: 40 / 255.0, blue: 42 / 255.0))
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}

#Preview {
    SearchBar()
}

