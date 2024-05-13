//
//  PaymentCardCellView.swift
//  Sneakult
//
//  Created by IOS Development on 28/04/24.
//
import SwiftUI

// Struct to represent payment card information
struct PaymentCardInfo {
    var cardNumber: String
    var cardHolderName: String
    var expirationDate: String
    var bankName: String
}

// Define a SwiftUI View called PaymentCardCellView
struct PaymentCardCellView: View {
    // State variables to manage payment card data and UI states
    @State private var cards: [PaymentCardInfo] = []
    @State private var isAddingCard: Bool = false
    @State private var newCardInfo: PaymentCardInfo = PaymentCardInfo(cardNumber: "", cardHolderName: "", expirationDate: "", bankName: "")
    @State private var showAlert: Bool = false
    
    // Define the body of the view
    var body: some View {
        // Navigation view for navigation-related UI
        NavigationView {
            // If no cards are added, display "No cards added" message
            if cards.isEmpty {
                VStack {
                    Text("No cards added")
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding()
                    // Button to add a new card
                    Button(action: {
                        isAddingCard.toggle()
                    }) {
                        Text("Add Card")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.accentColor)
                            .cornerRadius(8)
                    }
                }
                .navigationTitle("Payment")
                .navigationBarItems(trailing: addButton)
            } else {
                // If cards are available, display them
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(cards.indices, id: \.self) { index in
                            PaymentCardView(cardInfo: cards[index])
                                .padding()
                                .contextMenu {
                                    Button(action: {
                                        removeCard(at: index)
                                    }) {
                                        Label("Delete", systemImage: "trash")
                                            .foregroundColor(.red)
                                    }
                                }
                                .gesture(
                                    LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                        }
                                )
                        }
                    }
                    .padding()
                }
                .navigationTitle("Payment")
                .navigationBarItems(trailing: addButton)
            }
        }
        // Sheet for adding a new card
        .sheet(isPresented: $isAddingCard, content: {
            AddCardView(isAddingCard: $isAddingCard, cardInfo: $newCardInfo, onAddCard: addCard)
        })
        // Alert to show when a card is successfully added
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success"), message: Text("Card added successfully"), dismissButton: .default(Text("OK")))
        }
    }
    
    // Add button in the navigation bar
    private var addButton: some View {
        Button(action: {
            isAddingCard.toggle()
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.title)
                .foregroundColor(Color.accentColor)
                .padding()
        }
    }
    
    // Function to remove a card
    private func removeCard(at index: Int) {
        cards.remove(at: index)
    }
    
    // Function to add a new card
    private func addCard() {
        cards.append(newCardInfo)
        newCardInfo = PaymentCardInfo(cardNumber: "", cardHolderName: "", expirationDate: "", bankName: "")
        isAddingCard = false
        showAlert = true
    }
}

// Define a SwiftUI View called PaymentCardView to display individual payment card details
struct PaymentCardView: View {
    let cardInfo: PaymentCardInfo
    
    // Define the body of the view
    var body: some View {
        ZStack {
            // Background card shape
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 50/255, green: 50/255, blue: 50/255), Color.black]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 360, height: 230)
                .padding()
            
            // Card details
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    // Bank name
                    Text(cardInfo.bankName.uppercased())
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                }
                .padding(.horizontal, 20)
                
                // Partially obscured card number
                Text("**** **** **** \(cardInfo.cardNumber.suffix(4))")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.leading, 25)
                
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        // Cardholder information
                        Text("CARDHOLDER")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(cardInfo.cardHolderName.uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 2) {
                        // Expiration date
                        Text("EXPIRES")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(cardInfo.expirationDate)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .padding(.trailing, 20)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

// Define a SwiftUI View called AddCardView to add a new payment card
struct AddCardView: View {
    @Binding var isAddingCard: Bool
    @Binding var cardInfo: PaymentCardInfo
    var onAddCard: () -> Void
    
    // Define the body of the view
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Details")) {
                    // Text fields for entering card details
                    TextField("Card Number", text: $cardInfo.cardNumber)
                    TextField("Cardholder Name", text: $cardInfo.cardHolderName)
                    TextField("Expiration Date (MM/YYYY)", text: $cardInfo.expirationDate)
                    TextField("Bank Name", text: $cardInfo.bankName)
                }
            }
            .navigationTitle("Add Card")
            // Button to add the card
            .navigationBarItems(trailing: Button("Add") {
                onAddCard()
            })
        }
    }
}

// Define a preview provider to display PaymentCardCellView in the preview canvas
struct PaymentCardCellView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCardCellView()
    }
}
