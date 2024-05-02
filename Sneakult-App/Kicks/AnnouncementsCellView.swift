import SwiftUI

struct AnnouncementsCellView: View {
    @State private var selectedAnnouncement: Announcements?
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.white)
            .frame(width: 300, height: 130)
            .opacity(2)
            .overlay {
                if let announcement = selectedAnnouncement {
                    HStack {
                        Image(announcement.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 130)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(announcement.text)
                                .foregroundColor(Color(.accent))
                                .font(.headline)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                            
                            Text(announcement.secondaryText)
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .shadow(radius: 8)
        
        .onAppear {
            let announcementsDataModel = AnnouncementsDataModel()
            let allAnnouncements = announcementsDataModel.announcements
            self.selectedAnnouncement = allAnnouncements.randomElement()
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail View")
    }
}

#if DEBUG
struct AnnouncementsCellView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementsCellView()
    }
}
#endif

