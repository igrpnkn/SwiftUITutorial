//
//  NotificationController.swift
//  WatchLandmarks Watch App
//
//  Created by Igor Penkin on 09.02.2025.
//

import WatchKit
import SwiftUI
import UserNotifications

final class NotificationController: WKUserNotificationHostingController<NotificationView> {
    var landmark: Landmark?
    var title: String?
    var message: String?

    let landmarkIndexKey = "landmarkIndex"

    override var body: NotificationView {
        NotificationView(
            title: title,
            message: message,
            landmark: landmark
        )
    }

    override func didReceive(_ notification: UNNotification) {
        typealias StringAnyDictionary = [String: Any]
        let modelData = ModelData()
        let notificationData = notification.request.content.userInfo as? StringAnyDictionary

        let aps = notificationData?["aps"] as? StringAnyDictionary
        let alert = aps?["alert"] as? StringAnyDictionary

        title = alert?["title"] as? String
        message = alert?["body"] as? String

        if let index = notificationData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
}
