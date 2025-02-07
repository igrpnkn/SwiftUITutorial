//
//  ProfileEditor.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 07.02.2025.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile

    private var seasonalPhoto: [Profile.Season] {
        Profile.Season.allCases
    }

    private var dateRange: ClosedRange<Date> {
        Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        ...
        Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
    }

    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                ForEach(seasonalPhoto) {
                    Text($0.rawValue).tag($0)
                }
            }
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date")
            }
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
