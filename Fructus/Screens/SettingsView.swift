//
//  SettingsView.swift
//  Fructus
//
//  Created by Visarut Tippun on 18/3/22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20)  {
                    // MARK: - Section 1
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsTitleView(title: "Fructus",
                                          imageName: "info.circle")
                    }
                    
                    // MARK: - Section 2
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                            
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                        )
                    } label: {
                        SettingsTitleView(title: "Customization",
                                          imageName: "paintbrush")
                    }

                    
                    // MARK: - Section 3
                    GroupBox {
                        SettingsRowView(title: "Developer", value: "Knot / knottx")
                        SettingsRowView(title: "Compatibility", value: "iOS 15")
                        SettingsRowView(title: "SwiftUI", value: "3.0")
                        SettingsRowView(title: "GitHub",
                                        linkTitle: "knottx",
                                        linkDestination: "https://github.com/knottx")
                    } label: {
                        SettingsTitleView(title: "Application",
                                          imageName: "apps.iphone")
                    }

                    
                } //: VStack
                .navigationTitle("Settings")
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
