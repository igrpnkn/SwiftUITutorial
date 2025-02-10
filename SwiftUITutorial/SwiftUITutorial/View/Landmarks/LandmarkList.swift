//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 27.11.2024.
//

import SwiftUI

#Preview {
    LandmarkList()
        .environment(ModelData())
}

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly: Bool = false
    @State private var filter: Self.FilterCategory = .all

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle(title)
            .animation(.default, value: filteredLandmarks)
            .frame(minWidth: 300)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Toggle(isOn: $showFavoritesOnly) {
                            Label("Favorites only", systemImage: "star.fill")
                        }
                        Picker("Category", selection: $filter) {
                            ForEach(FilterCategory.allCases) {
                                Text($0.rawValue).tag($0)
                            }
                        }
                        .pickerStyle(.inline)
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }

                }
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

private extension LandmarkList {
    enum FilterCategory: String, CaseIterable, Identifiable {
        case all = "All"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"

        var id: FilterCategory { self }
    }

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            (!showFavoritesOnly || $0.isFavorite) &&
            (filter == .all || filter.rawValue == $0.category.rawValue)
        }
    }

    var title: String {
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoritesOnly ? "Favorite \(title)" : title
    }
}
