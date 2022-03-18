//
//  SettingsTitleView.swift
//  Fructus
//
//  Created by Visarut Tippun on 18/3/22.
//

import SwiftUI

struct SettingsTitleView: View {
    var title: String
    var imageName: String
    
    var body: some View {
        HStack {
            Text(title.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: imageName)
        }
    }
}

struct SettingsTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTitleView(title: "Fructus", imageName: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
