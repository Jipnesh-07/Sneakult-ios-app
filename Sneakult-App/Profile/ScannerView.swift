//
//  ScannerView.swift
//  Sneakult-App
//
//  Created by STUDENT on 01/05/24.
//

import SwiftUI

struct ScannerView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25.0)
             
                .frame(maxWidth: .infinity, maxHeight: 300)
                .foregroundColor(Color(.white))
                .shadow(radius: 12)
            
            
                Image(systemName: "slider.horizontal.3")
                    .padding()
                    .frame(width: 40, height: 35)
                    .foregroundColor(.accentColor)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
            
        }
            
    }
}

#Preview {
    ScannerView()
}
