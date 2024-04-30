// KicksView

import SwiftUI

struct KicksView: View {
    @State private var userName = "John"
    @State private var searchText: String = ""
    @State private var isShowingAllItems = false
    @State private var navigationBarHidden = false
    @State private var navigationTimeHidden = false
    @State private var showingPopover = false
    @State private var isFilterSheetPresented = false
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack {
                    VStack(spacing: 15) {
                        HStack {
                            TextField("Search", text: $searchText)
                                .padding(10)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(26)
                                .padding(.trailing, 5)
                                .frame(height: 30)
                                .padding(.horizontal)
                            Button(action: {
                                isFilterSheetPresented.toggle().self
                            }) {
                                Image(systemName: "slider.horizontal.3")
                                    .foregroundColor(.gray)
                                    .padding(10)
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(8)
                            }
                            .popover(isPresented: $isFilterSheetPresented){
                                FilterCardView()
                                    .background()
                                
                            }
                        }
                        .padding(.top, 10)
                        .padding(.horizontal)
                        
                        // Announcements Section
                        SectionView(title: "New Arrivals") {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 30) {
                                    ForEach(1..<10) { index in
                                        NewArrivalCellView()
                                    }
                                }
                                .frame(height: 500)
                                .padding(.horizontal)
                                .padding(.top, 60)
                            }
                            .frame(height: 200)
                        }
                        SectionView(title: "Announcements") {
                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack (spacing: 30){
                                    ForEach(1..<10) { index in
                                        AnnouncementsCellView()
                                            .frame(width: 300, height: 150)
                                    }
                                }
                                .frame(height: 300)
                                .padding(.horizontal)
                            }
                            .frame(height: 200)
                        }
                        SectionView(title: "Announcements") {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack (spacing: 30){
                                    ForEach(1..<10) { index in
                                        AnnouncementsCellView()
                                            .frame(width: 300, height: 150)
                                    }
                                }
                                .frame(height: 300)
                                .padding(.horizontal)
                            }
                            .frame(height: 200)
                        }
                    }
                    .navigationTitle("Hello, \(userName)")
                    .navigationBarHidden(navigationBarHidden)
                    .onAppear {
                        navigationBarHidden = false
                    }
                    .onDisappear {
                        navigationBarHidden = true
                    }
                }
                ZStack {
                    Text(formattedDate(date: Date()))
                        .offset(y:-930)                        .offset(x: -120)
                        .sheet(isPresented: $isShowingAllItems) {
                            Text("All Items")
                        }
                }
            }
        }
    }
}
extension KicksView {
    func formattedDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE d MMMM"
        return dateFormatter.string(from: date)
    }
}
struct SectionView <Content: View>: View {
    let title: String
    let content: () -> Content
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .lastTextBaseline){
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Button("View all") {
                }
            }.padding(.horizontal, 16)
            content()
        }
    }
}
struct NavigationBarAppearance: View {
    @Binding var shouldHideNavigationBar: Bool
    
    var body: some View {
        GeometryReader { geometry in
            Color.clear.preference(key: OffsetPreferenceKey.self, value: geometry.frame(in: .global).minY)
        }
        .onPreferenceChange(OffsetPreferenceKey.self) { offset in
            shouldHideNavigationBar = offset > 0
        }
    }
}
struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
struct KicksView_Previews: PreviewProvider {
    static var previews: some View {
        KicksView()
    }
}

