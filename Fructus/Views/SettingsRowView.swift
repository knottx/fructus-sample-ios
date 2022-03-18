//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Visarut Tippun on 18/3/22.
//

import SwiftUI

struct SettingsRowView: View {
    var title: String
    var value: String? = nil
    var linkTitle: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(title)
                    .foregroundColor(.gray)
                Spacer()
                if let value = value {
                    Text(value)
                } else if let linkTitle = linkTitle,
                          let linkDestination = linkDestination {
                    Link(linkTitle,
                         destination: URL(string: linkDestination)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
            } //: HStack
        } //: VStack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(title: "Developer", value: "Knot / knottx")
            .preferredColorScheme(.light)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
        SettingsRowView(title: "GitHub",
                        linkTitle: "knottx",
                        linkDestination: "https://github.com/knottx")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
