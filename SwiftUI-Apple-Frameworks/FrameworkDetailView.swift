//
//  FrameworkDetailView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Caner Çağrı on 13.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: FrameworkModel
    
    var body: some View {
        FrameworkTitleView(framework: framework)
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[2])
    }
}
