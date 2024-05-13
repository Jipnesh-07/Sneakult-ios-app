import SwiftUI

// View for displaying individual announcements in a cell
struct AnnouncementsCellView: View {
    var announcement: Announcements // Data model for the announcement
    
    var body: some View {
        RoundedRectangle(cornerRadius: 11)
            .foregroundColor(.white)
            .frame(width: 300, height: 130)
            .opacity(2)
            .overlay {
                HStack {
                    // Image associated with the announcement
                    Image(announcement.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 130)
                        .clipShape(Rectangle())
                        .cornerRadius(11)
                        .frame(maxWidth: .infinity)
                    
                    // Text content of the announcement
                    VStack(alignment: .leading, spacing: 4) {
                        Text(announcement.text)
                            .foregroundColor(.black)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                        
                        Text(announcement.secondaryText)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                }
            }
            .shadow(radius: 2)
            .opacity(4)
    }
}

// Preview for AnnouncementsCellView
#if DEBUG
struct AnnouncementsCellView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.horizontal) {
            HStack {
                AnnouncementsCellView(announcement: AnnouncementsDataModel().getAllAnnouncements()[0])
            }
        }
    }
}
#endif
