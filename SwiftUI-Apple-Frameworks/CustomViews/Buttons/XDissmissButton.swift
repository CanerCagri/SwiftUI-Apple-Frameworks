//
//  XDissmissButton.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Caner Çağrı on 14.08.2022.
//

import SwiftUI

struct XDissmissButton: View {
    
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(UIColor.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

struct XDissmissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDissmissButton(isShowingDetailView: .constant(false))
    }
}
