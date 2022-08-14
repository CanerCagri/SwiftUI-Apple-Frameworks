//
//  FrameworkDetailView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Caner Çağrı on 13.08.2022.
//

import SwiftUI
import SafariServices

struct FrameworkDetailView: View {

    var framework: FrameworkModel
    
    @Binding var isShowingDetailView: Bool
    @State var showSafari = false
    @State var urlString = "https:\\www.google.com"
    
    var body: some View {
        VStack {
            
            XDissmissButton(isShowingDetailView: $isShowingDetailView)
          
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
    
            Button {
                urlString = framework.urlString
                showSafari = true
            } label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $showSafari) {
                SafariView(url: URL(string: self.urlString)!)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[2], isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
