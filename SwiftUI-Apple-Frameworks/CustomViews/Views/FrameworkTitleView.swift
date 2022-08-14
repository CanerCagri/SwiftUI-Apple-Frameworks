//
//  FrameworkTitleView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Caner Çağrı on 14.08.2022.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: FrameworkModel
    
    var body: some View {
        
        VStack {
            Image((framework.imageName))
                .resizable()
                .frame(width: 60, height: 60)
            
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.frameworks[0])
    }
}
