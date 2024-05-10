//
//  PaymentCardCellView.swift
//  Sneakult
//
//  Created by IOS Development on 28/04/24.
//
import SwiftUI

struct PaymentCardCellView: View {
    @State private var cards: [PaymentCardInfo] = []
    @State private var isAddingCard: Bool = false
    @State private var newCardInfo: PaymentCardInfo = PaymentCardInfo(cardNumber: "", cardHolderName: "", expirationDate: "", bankName: "")
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationView {
            if cards.isEmpty {
                VStack {
                    Text("No cards added")
                        .foregroundColor(.gray)
                        .font(.headline)
                        .padding()
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
        .sheet(isPresented: $isAddingCard, content: {
            AddCardView(isAddingCard: $isAddingCard, cardInfo: $newCardInfo, onAddCard: addCard)
        })
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success"), message: Text("Card added successfully"), dismissButton: .default(Text("OK")))
        }
    }
    
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
    
    private func removeCard(at index: Int) {
        cards.remove(at: index)
    }
    
    private func addCard() {
        cards.append(newCardInfo)
        newCardInfo = PaymentCardInfo(cardNumber: "", cardHolderName: "", expirationDate: "", bankName: "")
        isAddingCard = false
        showAlert = true
    }
    
}

struct PaymentCardView: View {
    let cardInfo: PaymentCardInfo
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 50/255, green: 50/255, blue: 50/255), Color.black]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 360, height: 230)
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    Text(cardInfo.bankName.uppercased())
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                }
                .padding(.horizontal, 20)
                
                Text("**** **** **** \(cardInfo.cardNumber.suffix(4))")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.leading, 25)
                
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("CARDHOLDER")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(cardInfo.cardHolderName.uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 2) {
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

struct AddCardView: View {
    @Binding var isAddingCard: Bool
    @Binding var cardInfo: PaymentCardInfo
    var onAddCard: () -> Void
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Details")) {
                    TextField("Card Number", text: $cardInfo.cardNumber)
                    TextField("Cardholder Name", text: $cardInfo.cardHolderName)
                    TextField("Expiration Date (MM/YYYY)", text: $cardInfo.expirationDate)
                    TextField("Bank Name", text: $cardInfo.bankName)
                }
            }
            .navigationTitle("Add Card")
            .navigationBarItems(trailing: Button("Add") {
                onAddCard()
            })
        }
    }
}

struct PaymentCardInfo {
    var cardNumber: String
    var cardHolderName: String
    var expirationDate: String
    var bankName: String
}

struct PaymentCardCellView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCardCellView()
    }
}

