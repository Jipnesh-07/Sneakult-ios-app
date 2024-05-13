import SwiftUI

// Model for representing top brands
struct TopBrands: Identifiable {
    let id = UUID()
    let name: String
    var isSelected: Bool
}

// View for displaying and selecting top brands
struct TopBrandsView: View {
    @State private var searchAll: String = ""
    @State private var brands: [TopBrands] = [
        TopBrands(name: "Nike", isSelected: false),
        TopBrands(name: "Fila", isSelected: false),
        TopBrands(name: "Jordan", isSelected: false),
        TopBrands(name: "Adidas", isSelected: false),
        TopBrands(name: "New Balance", isSelected: false),
        TopBrands(name: "Reebok", isSelected: false)
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 3) {
                ScrollView(showsIndicators: false) {
                    // Display brands in a filter section
                    FilterSectionView(title: "", options: brands.map { $0.name })
                }
                Spacer()
            }
            .safeAreaPadding()
            .searchable(text: $searchAll) // Enable search functionality
            .navigationTitle("SELECT BRANDS") // Set navigation title
        }
    }
    
    // Function to toggle brand selection
    private func toggleSelection(for brand: TopBrands) {
        if let index = brands.firstIndex(where: { $0.id == brand.id }) {
            brands[index].isSelected.toggle()
        }
    }
}

// Preview for TopBrandsView
struct TopBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        TopBrandsView()
    }
}
