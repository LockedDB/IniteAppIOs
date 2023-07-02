//
//  ProjectModel.swift
//  IniteAppIOs
//
//  Created by Dani Benet on 2/7/23.
//

import Foundation

class Project {
    var title: String
    var description: String
    var topicLines: [String]
    var participantsUrls: [String]
    var tags: [String]
    var nMessages: Int
    var nAttachments: Int

    init(title: String, description: String, topicLines: [String], participantsUrls: [String], tags: [String], nMessages: Int, nAttachments: Int) {
        self.title = title
        self.description = description
        self.topicLines = topicLines
        self.participantsUrls = participantsUrls
        self.tags = tags
        self.nMessages = nMessages
        self.nAttachments = nAttachments
    }
}
