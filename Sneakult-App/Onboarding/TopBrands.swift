//
//import SwiftUI
//
//struct TopBrands: Identifiable {
//    let id = UUID()
//    let name: String
//    var isSelected: Bool
//}
//
//struct TopBrandsView: View {
//    @State private var searchAll: String = ""
//    @State private var brands: [TopBrands] = [
//        TopBrands(name: "Nike", isSelected: false),
//        TopBrands(name: "Fila", isSelected: false),
//        TopBrands(name: "Jordan", isSelected: false),
//        TopBrands(name: "Adidas", isSelected: false),
//        TopBrands(name: "New Balance", isSelected: false),
//        TopBrands(name: "Reebok", isSelected: false)
//    ]
//    
//    @State private var columnWidth: CGFloat = 10
//    
//    var body: some View {
//        NavigationStack{
//            VStack(alignment: .leading, spacing: 3) {
//                ScrollView (showsIndicators: false){
//                    FilterSectionView(title: "", options: ["Nike", "Adidas","NB", "Vans", "Puma", "Reebok","Jordan"])
//                }
//                
//                Spacer()
//            }
//            .safeAreaPadding()
//            .searchable(text: $searchAll)
//            .navigationTitle("SELECT BRANDS")
//
//        }
//        }
//
//    private func toggleSelection(for brand: TopBrands) {
//        if let index = brands.firstIndex(where: { $0.id == brand.id }) {
//            brands[index].isSelected.toggle()
//        }
//    }
//}
//
//
//struct TopBrandsView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopBrandsView()
//    }
//}
//
//
//


import SwiftUI

struct TopBrands: Identifiable {
    let id = UUID()
    let name: String
    var isSelected: Bool
}

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
                    FilterSectionView(title: "", options: brands.map { $0.name })
                }
                Spacer()
            }
            .safeAreaPadding()
            .searchable(text: $searchAll)
            .navigationTitle("SELECT BRANDS")
        }
    }

    private func toggleSelection(for brand: TopBrands) {
        if let index = brands.firstIndex(where: { $0.id == brand.id }) {
            brands[index].isSelected.toggle()
        }
    }
}

struct TopBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        TopBrandsView()
    }
}


