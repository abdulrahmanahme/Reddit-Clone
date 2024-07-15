// To parse this JSON data, do
//
//     final videoModel = videoModelFromJson(jsonString);

import 'dart:convert';

List<VideoModel> videoModelFromJson(String str) => List<VideoModel>.from(json.decode(str).map((x) => VideoModel.fromJson(x)));

String videoModelToJson(List<VideoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideoModel {
    String kind;
    VideoModelData data;

    VideoModel({
        required this.kind,
        required this.data,
    });

    factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        kind: json["kind"],
        data: VideoModelData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
    };
}

class VideoModelData {
    dynamic after;
    int? dist;
    dynamic modhash;
    String geoFilter;
    List<PurpleChild> children;
    dynamic before;

    VideoModelData({
        required this.after,
        required this.dist,
        required this.modhash,
        required this.geoFilter,
        required this.children,
        required this.before,
    });

    factory VideoModelData.fromJson(Map<String, dynamic> json) => VideoModelData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<PurpleChild>.from(json["children"].map((x) => PurpleChild.fromJson(x))),
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
    };
}

class PurpleChild {
    Kind kind;
    PurpleData data;

    PurpleChild({
        required this.kind,
        required this.data,
    });

    factory PurpleChild.fromJson(Map<String, dynamic> json) => PurpleChild(
        kind: kindValues.map[json["kind"]]!,
        data: PurpleData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
    };
}

class PurpleData {
    dynamic approvedAtUtc;
    Subreddit subreddit;
    String? selftext;
    List<dynamic> userReports;
    bool saved;
    dynamic modReasonTitle;
    int gilded;
    bool? clicked;
    String? title;
    List<FlairRichtext>? linkFlairRichtext;
    SubredditNamePrefixed subredditNamePrefixed;
    bool? hidden;
    int? pwls;
    String? linkFlairCssClass;
    int downs;
    dynamic topAwardedType;
    String? parentWhitelistStatus;
    bool? hideScore;
    String name;
    bool? quarantine;
    String? linkFlairTextColor;
    double? upvoteRatio;
    String? authorFlairBackgroundColor;
    SubredditType subredditType;
    int ups;
    int totalAwardsReceived;
    Gildings? mediaEmbed;
    String? authorFlairTemplateId;
    bool? isOriginalContent;
    String authorFullname;
    Media? secureMedia;
    bool? isRedditMediaDomain;
    bool? isMeta;
    dynamic category;
    Gildings? secureMediaEmbed;
    String? linkFlairText;
    bool canModPost;
    int score;
    dynamic approvedBy;
    bool? isCreatedFromAdsUi;
    bool authorPremium;
    String? thumbnail;
    bool edited;
    dynamic authorFlairCssClass;
    List<FlairRichtext> authorFlairRichtext;
    Gildings gildings;
    dynamic contentCategories;
    bool? isSelf;
    dynamic modNote;
    num created;
    AuthorFlairType? linkFlairType;
    int? wls;
    dynamic removedByCategory;
    dynamic bannedBy;
    AuthorFlairType authorFlairType;
    String? domain;
    bool? allowLiveComments;
    String? selftextHtml;
    bool? likes;
    dynamic suggestedSort;
    dynamic bannedAtUtc;
    String? urlOverriddenByDest;
    dynamic viewCount;
    bool archived;
    bool noFollow;
    bool? isCrosspostable;
    bool? pinned;
    bool? over18;
    List<dynamic> allAwardings;
    List<dynamic> awarders;
    bool? mediaOnly;
    String? linkFlairTemplateId;
    bool canGild;
    bool? spoiler;
    bool locked;
    String? authorFlairText;
    List<dynamic> treatmentTags;
    bool? visited;
    dynamic removedBy;
    dynamic numReports;
    String? distinguished;
    SubredditId subredditId;
    bool authorIsBlocked;
    dynamic modReasonBy;
    dynamic removalReason;
    String? linkFlairBackgroundColor;
    String id;
    bool? isRobotIndexable;
    int? numDuplicates;
    dynamic reportReasons;
    String author;
    dynamic discussionType;
    int? numComments;
    bool sendReplies;
    Media? media;
    bool? contestMode;
    bool authorPatreonFlair;
    String? authorFlairTextColor;
    String permalink;
    String? whitelistStatus;
    bool stickied;
    String? url;
    int? subredditSubscribers;
    num createdUtc;
    int? numCrossposts;
    List<dynamic> modReports;
    bool? isVideo;
    dynamic commentType;
    dynamic replies;
    String? collapsedReasonCode;
    // Id? parentId;
    bool? collapsed;
    String? body;
    bool? isSubmitter;
    String? bodyHtml;
    String? collapsedReason;
    dynamic associatedAward;
    dynamic unrepliableReason;
    bool? scoreHidden;
    Id? linkId;
    int? controversiality;
    int? depth;
    dynamic collapsedBecauseCrowdControl;
    MediaMetadata? mediaMetadata;
    AuthorFlairType? rteMode;

    PurpleData({
        required this.approvedAtUtc,
        required this.subreddit,
        this.selftext,
        required this.userReports,
        required this.saved,
        required this.modReasonTitle,
        required this.gilded,
        this.clicked,
        this.title,
        this.linkFlairRichtext,
        required this.subredditNamePrefixed,
        this.hidden,
        this.pwls,
        this.linkFlairCssClass,
        required this.downs,
        required this.topAwardedType,
        this.parentWhitelistStatus,
        this.hideScore,
        required this.name,
        this.quarantine,
        this.linkFlairTextColor,
        this.upvoteRatio,
        required this.authorFlairBackgroundColor,
        required this.subredditType,
        required this.ups,
        required this.totalAwardsReceived,
        this.mediaEmbed,
        required this.authorFlairTemplateId,
        this.isOriginalContent,
        required this.authorFullname,
        this.secureMedia,
        this.isRedditMediaDomain,
        this.isMeta,
        this.category,
        this.secureMediaEmbed,
        this.linkFlairText,
        required this.canModPost,
        required this.score,
        required this.approvedBy,
        this.isCreatedFromAdsUi,
        required this.authorPremium,
        this.thumbnail,
        required this.edited,
        required this.authorFlairCssClass,
        required this.authorFlairRichtext,
        required this.gildings,
        this.contentCategories,
        this.isSelf,
        required this.modNote,
        required this.created,
        this.linkFlairType,
        this.wls,
        this.removedByCategory,
        required this.bannedBy,
        required this.authorFlairType,
        this.domain,
        this.allowLiveComments,
        this.selftextHtml,
        required this.likes,
        this.suggestedSort,
        required this.bannedAtUtc,
        this.urlOverriddenByDest,
        this.viewCount,
        required this.archived,
        required this.noFollow,
        this.isCrosspostable,
        this.pinned,
        this.over18,
        required this.allAwardings,
        required this.awarders,
        this.mediaOnly,
        this.linkFlairTemplateId,
        required this.canGild,
        this.spoiler,
        required this.locked,
        required this.authorFlairText,
        required this.treatmentTags,
        this.visited,
        this.removedBy,
        required this.numReports,
        required this.distinguished,
        required this.subredditId,
        required this.authorIsBlocked,
        required this.modReasonBy,
        required this.removalReason,
        this.linkFlairBackgroundColor,
        required this.id,
        this.isRobotIndexable,
        this.numDuplicates,
        required this.reportReasons,
        required this.author,
        this.discussionType,
        this.numComments,
        required this.sendReplies,
        this.media,
        this.contestMode,
        required this.authorPatreonFlair,
        required this.authorFlairTextColor,
        required this.permalink,
        this.whitelistStatus,
        required this.stickied,
        this.url,
        this.subredditSubscribers,
        required this.createdUtc,
        this.numCrossposts,
        required this.modReports,
        this.isVideo,
        this.commentType,
        this.replies,
        this.collapsedReasonCode,
        // this.parentId,
        this.collapsed,
        this.body,
        this.isSubmitter,
        this.bodyHtml,
        this.collapsedReason,
        this.associatedAward,
        this.unrepliableReason,
        this.scoreHidden,
        this.linkId,
        this.controversiality,
        this.depth,
        this.collapsedBecauseCrowdControl,
        this.mediaMetadata,
        this.rteMode,
    });

    factory PurpleData.fromJson(Map<String, dynamic> json) => PurpleData(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        selftext: json["selftext"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext: json["link_flair_richtext"] == null ? [] : List<FlairRichtext>.from(json["link_flair_richtext"]!.map((x) => FlairRichtext.fromJson(x))),
        subredditNamePrefixed: subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"],
        topAwardedType: json["top_awarded_type"],
        parentWhitelistStatus: json["parent_whitelist_status"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        linkFlairTextColor: json["link_flair_text_color"],
        upvoteRatio: json["upvote_ratio"]?.toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: json["media_embed"] == null ? null : Gildings.fromJson(json["media_embed"]),
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        authorFullname: json["author_fullname"],
        secureMedia: json["secure_media"] == null ? null : Media.fromJson(json["secure_media"]),
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: json["secure_media_embed"] == null ? null : Gildings.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        isCreatedFromAdsUi: json["is_created_from_ads_ui"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext: List<FlairRichtext>.from(json["author_flair_richtext"].map((x) => FlairRichtext.fromJson(x))),
        gildings: Gildings.fromJson(json["gildings"]),
        contentCategories: json["content_categories"],
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: json["created"],
        // linkFlairType: authorFlairTypeValues.map[json["link_flair_type"]]!,
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: authorFlairTypeValues.map[json["author_flair_type"]]!,
        domain: json["domain"],
        allowLiveComments: json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        urlOverriddenByDest: json["url_overridden_by_dest"],
        viewCount: json["view_count"],
        archived: json["archived"],
        noFollow: json["no_follow"],
        isCrosspostable: json["is_crosspostable"],
        pinned: json["pinned"],
        over18: json["over_18"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"],
        linkFlairTemplateId: json["link_flair_template_id"],
        canGild: json["can_gild"],
        spoiler: json["spoiler"],
        locked: json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        authorIsBlocked: json["author_is_blocked"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        numDuplicates: json["num_duplicates"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
        contestMode: json["contest_mode"],
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"],
        whitelistStatus: json["whitelist_status"],
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: json["created_utc"],
        numCrossposts: json["num_crossposts"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        isVideo: json["is_video"],
        commentType: json["comment_type"],
        replies: json["replies"],
        collapsedReasonCode: json["collapsed_reason_code"],
        // parentId: idValues.map[json["parent_id"]]!,
        collapsed: json["collapsed"],
        body: json["body"],
        isSubmitter: json["is_submitter"],
        bodyHtml: json["body_html"],
        collapsedReason: json["collapsed_reason"],
        associatedAward: json["associated_award"],
        unrepliableReason: json["unrepliable_reason"],
        scoreHidden: json["score_hidden"],
        // linkId: idValues.map[json["link_id"]]!,
        controversiality: json["controversiality"],
        depth: json["depth"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        mediaMetadata: json["media_metadata"] == null ? null : MediaMetadata.fromJson(json["media_metadata"]),
        // rteMode: authorFlairTypeValues.map[json["rte_mode"]]!,
    );

    Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subredditValues.reverse[subreddit],
        "selftext": selftext,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "clicked": clicked,
        "title": title,
        "link_flair_richtext": linkFlairRichtext == null ? [] : List<dynamic>.from(linkFlairRichtext!.map((x) => x.toJson())),
        "subreddit_name_prefixed": subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs,
        "top_awarded_type": topAwardedType,
        "parent_whitelist_status": parentWhitelistStatus,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "link_flair_text_color": linkFlairTextColor,
        "upvote_ratio": upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed?.toJson(),
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "author_fullname": authorFullname,
        "secure_media": secureMedia?.toJson(),
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed?.toJson(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "is_created_from_ads_ui": isCreatedFromAdsUi,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext": List<dynamic>.from(authorFlairRichtext.map((x) => x.toJson())),
        "gildings": gildings.toJson(),
        "content_categories": contentCategories,
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created,
        "link_flair_type": authorFlairTypeValues.reverse[linkFlairType],
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairTypeValues.reverse[authorFlairType],
        "domain": domain,
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "url_overridden_by_dest": urlOverriddenByDest,
        "view_count": viewCount,
        "archived": archived,
        "no_follow": noFollow,
        "is_crosspostable": isCrosspostable,
        "pinned": pinned,
        "over_18": over18,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly,
        "link_flair_template_id": linkFlairTemplateId,
        "can_gild": canGild,
        "spoiler": spoiler,
        "locked": locked,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "author_is_blocked": authorIsBlocked,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor,
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "num_duplicates": numDuplicates,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "media": media?.toJson(),
        "contest_mode": contestMode,
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink,
        "whitelist_status": whitelistStatus,
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc,
        "num_crossposts": numCrossposts,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "is_video": isVideo,
        "comment_type": commentType,
        "replies": replies,
        "collapsed_reason_code": collapsedReasonCode,
        // "parent_id": idValues.reverse[parentId],
        "collapsed": collapsed,
        "body": body,
        "is_submitter": isSubmitter,
        "body_html": bodyHtml,
        "collapsed_reason": collapsedReason,
        "associated_award": associatedAward,
        "unrepliable_reason": unrepliableReason,
        "score_hidden": scoreHidden,
        "link_id": idValues.reverse[linkId],
        "controversiality": controversiality,
        "depth": depth,
        "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        "media_metadata": mediaMetadata?.toJson(),
        "rte_mode": authorFlairTypeValues.reverse[rteMode],
    };
}

class FlairRichtext {
    String? a;
    String? u;
    E e;
    String? t;

    FlairRichtext({
        this.a,
        this.u,
        required this.e,
        this.t,
    });

    factory FlairRichtext.fromJson(Map<String, dynamic> json) => FlairRichtext(
        a: json["a"],
        u: json["u"],
        e: eValues.map[json["e"]]!,
        t: json["t"],
    );

    Map<String, dynamic> toJson() => {
        "a": a,
        "u": u,
        "e": eValues.reverse[e],
        "t": t,
    };
}

enum E {
    EMOJI,
    TEXT
}

final eValues = EnumValues({
    "emoji": E.EMOJI,
    "text": E.TEXT
});

enum AuthorFlairType {
    RICHTEXT,
    TEXT
}

final authorFlairTypeValues = EnumValues({
    "richtext": AuthorFlairType.RICHTEXT,
    "text": AuthorFlairType.TEXT
});

class Gildings {
    Gildings();

    factory Gildings.fromJson(Map<String, dynamic> json) => Gildings(
    );

    Map<String, dynamic> toJson() => {
    };
}

enum Id {
    T3_1_E0_IBU0
}

final idValues = EnumValues({
    "t3_1e0ibu0": Id.T3_1_E0_IBU0
});

class Media {
    RedditVideo redditVideo;

    Media({
        required this.redditVideo,
    });

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        redditVideo: RedditVideo.fromJson(json["reddit_video"]),
    );

    Map<String, dynamic> toJson() => {
        "reddit_video": redditVideo.toJson(),
    };
}

class RedditVideo {
    int bitrateKbps;
    String fallbackUrl;
    bool hasAudio;
    int height;
    int width;
    String scrubberMediaUrl;
    String dashUrl;
    int duration;
    String hlsUrl;
    bool isGif;
    String transcodingStatus;

    RedditVideo({
        required this.bitrateKbps,
        required this.fallbackUrl,
        required this.hasAudio,
        required this.height,
        required this.width,
        required this.scrubberMediaUrl,
        required this.dashUrl,
        required this.duration,
        required this.hlsUrl,
        required this.isGif,
        required this.transcodingStatus,
    });

    factory RedditVideo.fromJson(Map<String, dynamic> json) => RedditVideo(
        bitrateKbps: json["bitrate_kbps"],
        fallbackUrl: json["fallback_url"],
        hasAudio: json["has_audio"],
        height: json["height"],
        width: json["width"],
        scrubberMediaUrl: json["scrubber_media_url"],
        dashUrl: json["dash_url"],
        duration: json["duration"],
        hlsUrl: json["hls_url"],
        isGif: json["is_gif"],
        transcodingStatus: json["transcoding_status"],
    );

    Map<String, dynamic> toJson() => {
        "bitrate_kbps": bitrateKbps,
        "fallback_url": fallbackUrl,
        "has_audio": hasAudio,
        "height": height,
        "width": width,
        "scrubber_media_url": scrubberMediaUrl,
        "dash_url": dashUrl,
        "duration": duration,
        "hls_url": hlsUrl,
        "is_gif": isGif,
        "transcoding_status": transcodingStatus,
    };
}

class MediaMetadata {
    The74Ar4Gr843Cd1 the74Ar4Gr843Cd1;

    MediaMetadata({
        required this.the74Ar4Gr843Cd1,
    });

    factory MediaMetadata.fromJson(Map<String, dynamic> json) => MediaMetadata(
        the74Ar4Gr843Cd1: The74Ar4Gr843Cd1.fromJson(json["74ar4gr843cd1"]),
    );

    Map<String, dynamic> toJson() => {
        "74ar4gr843cd1": the74Ar4Gr843Cd1.toJson(),
    };
}

class The74Ar4Gr843Cd1 {
    String status;
    String e;
    String m;
    List<S> p;
    S s;
    String id;

    The74Ar4Gr843Cd1({
        required this.status,
        required this.e,
        required this.m,
        required this.p,
        required this.s,
        required this.id,
    });

    factory The74Ar4Gr843Cd1.fromJson(Map<String, dynamic> json) => The74Ar4Gr843Cd1(
        status: json["status"],
        e: json["e"],
        m: json["m"],
        p: List<S>.from(json["p"].map((x) => S.fromJson(x))),
        s: S.fromJson(json["s"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "e": e,
        "m": m,
        "p": List<dynamic>.from(p.map((x) => x.toJson())),
        "s": s.toJson(),
        "id": id,
    };
}

class S {
    int y;
    int x;
    String u;

    S({
        required this.y,
        required this.x,
        required this.u,
    });

    factory S.fromJson(Map<String, dynamic> json) => S(
        y: json["y"],
        x: json["x"],
        u: json["u"],
    );

    Map<String, dynamic> toJson() => {
        "y": y,
        "x": x,
        "u": u,
    };
}

class PurpleReplies {
    String kind;
    FluffyData data;

    PurpleReplies({
        required this.kind,
        required this.data,
    });

    factory PurpleReplies.fromJson(Map<String, dynamic> json) => PurpleReplies(
        kind: json["kind"],
        data: FluffyData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
    };
}

class FluffyData {
    dynamic after;
    dynamic dist;
    dynamic modhash;
    String geoFilter;
    List<FluffyChild> children;
    dynamic before;

    FluffyData({
        required this.after,
        required this.dist,
        required this.modhash,
        required this.geoFilter,
        required this.children,
        required this.before,
    });

    factory FluffyData.fromJson(Map<String, dynamic> json) => FluffyData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<FluffyChild>.from(json["children"].map((x) => FluffyChild.fromJson(x))),
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
    };
}

class FluffyChild {
    Kind kind;
    TentacledData data;

    FluffyChild({
        required this.kind,
        required this.data,
    });

    factory FluffyChild.fromJson(Map<String, dynamic> json) => FluffyChild(
        kind: kindValues.map[json["kind"]]!,
        data: TentacledData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
    };
}

class TentacledData {
    SubredditId subredditId;
    dynamic approvedAtUtc;
    bool authorIsBlocked;
    dynamic commentType;
    List<dynamic> awarders;
    dynamic modReasonBy;
    dynamic bannedBy;
    AuthorFlairType authorFlairType;
    int totalAwardsReceived;
    Subreddit subreddit;
    String? authorFlairTemplateId;
    bool? likes;
    dynamic replies;
    List<dynamic> userReports;
    bool saved;
    String id;
    dynamic bannedAtUtc;
    dynamic modReasonTitle;
    int gilded;
    bool archived;
    dynamic collapsedReasonCode;
    bool noFollow;
    String author;
    bool canModPost;
    int createdUtc;
    bool sendReplies;
    String parentId;
    int score;
    String authorFullname;
    dynamic removalReason;
    dynamic approvedBy;
    dynamic modNote;
    List<dynamic> allAwardings;
    String body;
    dynamic edited;
    dynamic topAwardedType;
    dynamic authorFlairCssClass;
    String name;
    bool isSubmitter;
    int downs;
    List<FlairRichtext> authorFlairRichtext;
    bool authorPatreonFlair;
    String bodyHtml;
    Gildings gildings;
    dynamic collapsedReason;
    dynamic distinguished;
    dynamic associatedAward;
    bool stickied;
    bool authorPremium;
    bool canGild;
    Id linkId;
    dynamic unrepliableReason;
    String? authorFlairTextColor;
    bool scoreHidden;
    String permalink;
    SubredditType subredditType;
    bool locked;
    dynamic reportReasons;
    int created;
    String? authorFlairText;
    List<dynamic> treatmentTags;
    bool collapsed;
    SubredditNamePrefixed subredditNamePrefixed;
    int controversiality;
    int depth;
    String? authorFlairBackgroundColor;
    dynamic collapsedBecauseCrowdControl;
    List<dynamic> modReports;
    dynamic numReports;
    int ups;
    String? rteMode;

    TentacledData({
        required this.subredditId,
        required this.approvedAtUtc,
        required this.authorIsBlocked,
        required this.commentType,
        required this.awarders,
        required this.modReasonBy,
        required this.bannedBy,
        required this.authorFlairType,
        required this.totalAwardsReceived,
        required this.subreddit,
        required this.authorFlairTemplateId,
        required this.likes,
        required this.replies,
        required this.userReports,
        required this.saved,
        required this.id,
        required this.bannedAtUtc,
        required this.modReasonTitle,
        required this.gilded,
        required this.archived,
        required this.collapsedReasonCode,
        required this.noFollow,
        required this.author,
        required this.canModPost,
        required this.createdUtc,
        required this.sendReplies,
        required this.parentId,
        required this.score,
        required this.authorFullname,
        required this.removalReason,
        required this.approvedBy,
        required this.modNote,
        required this.allAwardings,
        required this.body,
        required this.edited,
        required this.topAwardedType,
        required this.authorFlairCssClass,
        required this.name,
        required this.isSubmitter,
        required this.downs,
        required this.authorFlairRichtext,
        required this.authorPatreonFlair,
        required this.bodyHtml,
        required this.gildings,
        required this.collapsedReason,
        required this.distinguished,
        required this.associatedAward,
        required this.stickied,
        required this.authorPremium,
        required this.canGild,
        required this.linkId,
        required this.unrepliableReason,
        required this.authorFlairTextColor,
        required this.scoreHidden,
        required this.permalink,
        required this.subredditType,
        required this.locked,
        required this.reportReasons,
        required this.created,
        required this.authorFlairText,
        required this.treatmentTags,
        required this.collapsed,
        required this.subredditNamePrefixed,
        required this.controversiality,
        required this.depth,
        required this.authorFlairBackgroundColor,
        required this.collapsedBecauseCrowdControl,
        required this.modReports,
        required this.numReports,
        required this.ups,
        this.rteMode,
    });

    factory TentacledData.fromJson(Map<String, dynamic> json) => TentacledData(
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        approvedAtUtc: json["approved_at_utc"],
        authorIsBlocked: json["author_is_blocked"],
        commentType: json["comment_type"],
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        modReasonBy: json["mod_reason_by"],
        bannedBy: json["banned_by"],
        authorFlairType: authorFlairTypeValues.map[json["author_flair_type"]]!,
        totalAwardsReceived: json["total_awards_received"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        authorFlairTemplateId: json["author_flair_template_id"],
        likes: json["likes"],
        replies: json["replies"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        id: json["id"],
        bannedAtUtc: json["banned_at_utc"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        archived: json["archived"],
        collapsedReasonCode: json["collapsed_reason_code"],
        noFollow: json["no_follow"],
        author: json["author"],
        canModPost: json["can_mod_post"],
        createdUtc: json["created_utc"],
        sendReplies: json["send_replies"],
        parentId: json["parent_id"],
        score: json["score"],
        authorFullname: json["author_fullname"],
        removalReason: json["removal_reason"],
        approvedBy: json["approved_by"],
        modNote: json["mod_note"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        body: json["body"],
        edited: json["edited"],
        topAwardedType: json["top_awarded_type"],
        authorFlairCssClass: json["author_flair_css_class"],
        name: json["name"],
        isSubmitter: json["is_submitter"],
        downs: json["downs"],
        authorFlairRichtext: List<FlairRichtext>.from(json["author_flair_richtext"].map((x) => FlairRichtext.fromJson(x))),
        authorPatreonFlair: json["author_patreon_flair"],
        bodyHtml: json["body_html"],
        gildings: Gildings.fromJson(json["gildings"]),
        collapsedReason: json["collapsed_reason"],
        distinguished: json["distinguished"],
        associatedAward: json["associated_award"],
        stickied: json["stickied"],
        authorPremium: json["author_premium"],
        canGild: json["can_gild"],
        linkId: idValues.map[json["link_id"]]!,
        unrepliableReason: json["unrepliable_reason"],
        authorFlairTextColor: json["author_flair_text_color"],
        scoreHidden: json["score_hidden"],
        permalink: json["permalink"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        locked: json["locked"],
        reportReasons: json["report_reasons"],
        created: json["created"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        collapsed: json["collapsed"],
        subredditNamePrefixed: subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        controversiality: json["controversiality"],
        depth: json["depth"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        numReports: json["num_reports"],
        ups: json["ups"],
        rteMode: json["rte_mode"],
    );

    Map<String, dynamic> toJson() => {
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "approved_at_utc": approvedAtUtc,
        "author_is_blocked": authorIsBlocked,
        "comment_type": commentType,
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "mod_reason_by": modReasonBy,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairTypeValues.reverse[authorFlairType],
        "total_awards_received": totalAwardsReceived,
        "subreddit": subredditValues.reverse[subreddit],
        "author_flair_template_id": authorFlairTemplateId,
        "likes": likes,
        "replies": replies,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved,
        "id": id,
        "banned_at_utc": bannedAtUtc,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "archived": archived,
        "collapsed_reason_code": collapsedReasonCode,
        "no_follow": noFollow,
        "author": author,
        "can_mod_post": canModPost,
        "created_utc": createdUtc,
        "send_replies": sendReplies,
        "parent_id": parentId,
        "score": score,
        "author_fullname": authorFullname,
        "removal_reason": removalReason,
        "approved_by": approvedBy,
        "mod_note": modNote,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        "body": body,
        "edited": edited,
        "top_awarded_type": topAwardedType,
        "author_flair_css_class": authorFlairCssClass,
        "name": name,
        "is_submitter": isSubmitter,
        "downs": downs,
        "author_flair_richtext": List<dynamic>.from(authorFlairRichtext.map((x) => x.toJson())),
        "author_patreon_flair": authorPatreonFlair,
        "body_html": bodyHtml,
        "gildings": gildings.toJson(),
        "collapsed_reason": collapsedReason,
        "distinguished": distinguished,
        "associated_award": associatedAward,
        "stickied": stickied,
        "author_premium": authorPremium,
        "can_gild": canGild,
        "link_id": idValues.reverse[linkId],
        "unrepliable_reason": unrepliableReason,
        "author_flair_text_color": authorFlairTextColor,
        "score_hidden": scoreHidden,
        "permalink": permalink,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "locked": locked,
        "report_reasons": reportReasons,
        "created": created,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "collapsed": collapsed,
        "subreddit_name_prefixed": subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "controversiality": controversiality,
        "depth": depth,
        "author_flair_background_color": authorFlairBackgroundColor,
        "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "num_reports": numReports,
        "ups": ups,
        "rte_mode": rteMode,
    };
}

class FluffyReplies {
    String kind;
    StickyData data;

    FluffyReplies({
        required this.kind,
        required this.data,
    });

    factory FluffyReplies.fromJson(Map<String, dynamic> json) => FluffyReplies(
        kind: json["kind"],
        data: StickyData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
    };
}

class StickyData {
    dynamic after;
    dynamic dist;
    dynamic modhash;
    String geoFilter;
    List<TentacledChild> children;
    dynamic before;

    StickyData({
        required this.after,
        required this.dist,
        required this.modhash,
        required this.geoFilter,
        required this.children,
        required this.before,
    });

    factory StickyData.fromJson(Map<String, dynamic> json) => StickyData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<TentacledChild>.from(json["children"].map((x) => TentacledChild.fromJson(x))),
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
    };
}

class TentacledChild {
    Kind kind;
    IndigoData data;

    TentacledChild({
        required this.kind,
        required this.data,
    });

    factory TentacledChild.fromJson(Map<String, dynamic> json) => TentacledChild(
        kind: kindValues.map[json["kind"]]!,
        data: IndigoData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
    };
}

class IndigoData {
    SubredditId subredditId;
    dynamic approvedAtUtc;
    bool authorIsBlocked;
    dynamic commentType;
    List<dynamic> awarders;
    dynamic modReasonBy;
    dynamic bannedBy;
    AuthorFlairType authorFlairType;
    int totalAwardsReceived;
    Subreddit subreddit;
    String? authorFlairTemplateId;
    dynamic likes;
    dynamic replies;
    List<dynamic> userReports;
    bool saved;
    String id;
    dynamic bannedAtUtc;
    dynamic modReasonTitle;
    int gilded;
    bool archived;
    String? collapsedReasonCode;
    bool noFollow;
    String author;
    bool canModPost;
    bool sendReplies;
    String parentId;
    int score;
    String authorFullname;
    dynamic removalReason;
    dynamic approvedBy;
    dynamic modNote;
    List<dynamic> allAwardings;
    String body;
    dynamic edited;
    dynamic topAwardedType;
    int downs;
    dynamic authorFlairCssClass;
    String name;
    bool isSubmitter;
    bool collapsed;
    List<FlairRichtext> authorFlairRichtext;
    bool authorPatreonFlair;
    String bodyHtml;
    Gildings gildings;
    String? collapsedReason;
    dynamic distinguished;
    dynamic associatedAward;
    bool stickied;
    bool authorPremium;
    bool canGild;
    Id linkId;
    dynamic unrepliableReason;
    String? authorFlairTextColor;
    bool scoreHidden;
    String permalink;
    SubredditType subredditType;
    bool locked;
    dynamic reportReasons;
    int created;
    String? authorFlairText;
    List<dynamic> treatmentTags;
    int createdUtc;
    SubredditNamePrefixed subredditNamePrefixed;
    int controversiality;
    int depth;
    String? authorFlairBackgroundColor;
    dynamic collapsedBecauseCrowdControl;
    List<dynamic> modReports;
    dynamic numReports;
    int ups;

    IndigoData({
        required this.subredditId,
        required this.approvedAtUtc,
        required this.authorIsBlocked,
        required this.commentType,
        required this.awarders,
        required this.modReasonBy,
        required this.bannedBy,
        required this.authorFlairType,
        required this.totalAwardsReceived,
        required this.subreddit,
        required this.authorFlairTemplateId,
        required this.likes,
        required this.replies,
        required this.userReports,
        required this.saved,
        required this.id,
        required this.bannedAtUtc,
        required this.modReasonTitle,
        required this.gilded,
        required this.archived,
        required this.collapsedReasonCode,
        required this.noFollow,
        required this.author,
        required this.canModPost,
        required this.sendReplies,
        required this.parentId,
        required this.score,
        required this.authorFullname,
        required this.removalReason,
        required this.approvedBy,
        required this.modNote,
        required this.allAwardings,
        required this.body,
        required this.edited,
        required this.topAwardedType,
        required this.downs,
        required this.authorFlairCssClass,
        required this.name,
        required this.isSubmitter,
        required this.collapsed,
        required this.authorFlairRichtext,
        required this.authorPatreonFlair,
        required this.bodyHtml,
        required this.gildings,
        required this.collapsedReason,
        required this.distinguished,
        required this.associatedAward,
        required this.stickied,
        required this.authorPremium,
        required this.canGild,
        required this.linkId,
        required this.unrepliableReason,
        required this.authorFlairTextColor,
        required this.scoreHidden,
        required this.permalink,
        required this.subredditType,
        required this.locked,
        required this.reportReasons,
        required this.created,
        required this.authorFlairText,
        required this.treatmentTags,
        required this.createdUtc,
        required this.subredditNamePrefixed,
        required this.controversiality,
        required this.depth,
        required this.authorFlairBackgroundColor,
        required this.collapsedBecauseCrowdControl,
        required this.modReports,
        required this.numReports,
        required this.ups,
    });

    factory IndigoData.fromJson(Map<String, dynamic> json) => IndigoData(
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        approvedAtUtc: json["approved_at_utc"],
        authorIsBlocked: json["author_is_blocked"],
        commentType: json["comment_type"],
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        modReasonBy: json["mod_reason_by"],
        bannedBy: json["banned_by"],
        authorFlairType: authorFlairTypeValues.map[json["author_flair_type"]]!,
        totalAwardsReceived: json["total_awards_received"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        authorFlairTemplateId: json["author_flair_template_id"],
        likes: json["likes"],
        replies: json["replies"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        id: json["id"],
        bannedAtUtc: json["banned_at_utc"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        archived: json["archived"],
        collapsedReasonCode: json["collapsed_reason_code"],
        noFollow: json["no_follow"],
        author: json["author"],
        canModPost: json["can_mod_post"],
        sendReplies: json["send_replies"],
        parentId: json["parent_id"],
        score: json["score"],
        authorFullname: json["author_fullname"],
        removalReason: json["removal_reason"],
        approvedBy: json["approved_by"],
        modNote: json["mod_note"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        body: json["body"],
        edited: json["edited"],
        topAwardedType: json["top_awarded_type"],
        downs: json["downs"],
        authorFlairCssClass: json["author_flair_css_class"],
        name: json["name"],
        isSubmitter: json["is_submitter"],
        collapsed: json["collapsed"],
        authorFlairRichtext: List<FlairRichtext>.from(json["author_flair_richtext"].map((x) => FlairRichtext.fromJson(x))),
        authorPatreonFlair: json["author_patreon_flair"],
        bodyHtml: json["body_html"],
        gildings: Gildings.fromJson(json["gildings"]),
        collapsedReason: json["collapsed_reason"],
        distinguished: json["distinguished"],
        associatedAward: json["associated_award"],
        stickied: json["stickied"],
        authorPremium: json["author_premium"],
        canGild: json["can_gild"],
        linkId: idValues.map[json["link_id"]]!,
        unrepliableReason: json["unrepliable_reason"],
        authorFlairTextColor: json["author_flair_text_color"],
        scoreHidden: json["score_hidden"],
        permalink: json["permalink"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        locked: json["locked"],
        reportReasons: json["report_reasons"],
        created: json["created"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        createdUtc: json["created_utc"],
        subredditNamePrefixed: subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        controversiality: json["controversiality"],
        depth: json["depth"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        numReports: json["num_reports"],
        ups: json["ups"],
    );

    Map<String, dynamic> toJson() => {
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "approved_at_utc": approvedAtUtc,
        "author_is_blocked": authorIsBlocked,
        "comment_type": commentType,
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "mod_reason_by": modReasonBy,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairTypeValues.reverse[authorFlairType],
        "total_awards_received": totalAwardsReceived,
        "subreddit": subredditValues.reverse[subreddit],
        "author_flair_template_id": authorFlairTemplateId,
        "likes": likes,
        "replies": replies,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved,
        "id": id,
        "banned_at_utc": bannedAtUtc,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "archived": archived,
        "collapsed_reason_code": collapsedReasonCode,
        "no_follow": noFollow,
        "author": author,
        "can_mod_post": canModPost,
        "send_replies": sendReplies,
        "parent_id": parentId,
        "score": score,
        "author_fullname": authorFullname,
        "removal_reason": removalReason,
        "approved_by": approvedBy,
        "mod_note": modNote,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        "body": body,
        "edited": edited,
        "top_awarded_type": topAwardedType,
        "downs": downs,
        "author_flair_css_class": authorFlairCssClass,
        "name": name,
        "is_submitter": isSubmitter,
        "collapsed": collapsed,
        "author_flair_richtext": List<dynamic>.from(authorFlairRichtext.map((x) => x.toJson())),
        "author_patreon_flair": authorPatreonFlair,
        "body_html": bodyHtml,
        "gildings": gildings.toJson(),
        "collapsed_reason": collapsedReason,
        "distinguished": distinguished,
        "associated_award": associatedAward,
        "stickied": stickied,
        "author_premium": authorPremium,
        "can_gild": canGild,
        "link_id": idValues.reverse[linkId],
        "unrepliable_reason": unrepliableReason,
        "author_flair_text_color": authorFlairTextColor,
        "score_hidden": scoreHidden,
        "permalink": permalink,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "locked": locked,
        "report_reasons": reportReasons,
        "created": created,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "created_utc": createdUtc,
        "subreddit_name_prefixed": subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "controversiality": controversiality,
        "depth": depth,
        "author_flair_background_color": authorFlairBackgroundColor,
        "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "num_reports": numReports,
        "ups": ups,
    };
}

class TentacledReplies {
    String kind;
    IndecentData data;

    TentacledReplies({
        required this.kind,
        required this.data,
    });

    factory TentacledReplies.fromJson(Map<String, dynamic> json) => TentacledReplies(
        kind: json["kind"],
        data: IndecentData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
    };
}

class IndecentData {
    dynamic after;
    dynamic dist;
    dynamic modhash;
    String geoFilter;
    List<StickyChild> children;
    dynamic before;

    IndecentData({
        required this.after,
        required this.dist,
        required this.modhash,
        required this.geoFilter,
        required this.children,
        required this.before,
    });

    factory IndecentData.fromJson(Map<String, dynamic> json) => IndecentData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<StickyChild>.from(json["children"].map((x) => StickyChild.fromJson(x))),
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
    };
}

class StickyChild {
    Kind kind;
    HilariousData data;

    StickyChild({
        required this.kind,
        required this.data,
    });

    factory StickyChild.fromJson(Map<String, dynamic> json) => StickyChild(
        kind: kindValues.map[json["kind"]]!,
        data: HilariousData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
    };
}

class HilariousData {
    SubredditId subredditId;
    dynamic approvedAtUtc;
    bool authorIsBlocked;
    dynamic commentType;
    List<dynamic> awarders;
    dynamic modReasonBy;
    dynamic bannedBy;
    AuthorFlairType? authorFlairType;
    int totalAwardsReceived;
    Subreddit subreddit;
    String? authorFlairTemplateId;
    dynamic likes;
    DataRepliesClass replies;
    List<dynamic> userReports;
    bool saved;
    String id;
    dynamic bannedAtUtc;
    dynamic modReasonTitle;
    int gilded;
    bool archived;
    String? collapsedReasonCode;
    bool noFollow;
    String author;
    bool canModPost;
    bool sendReplies;
    String parentId;
    int score;
    String? authorFullname;
    dynamic removalReason;
    dynamic approvedBy;
    dynamic modNote;
    List<dynamic> allAwardings;
    bool collapsed;
    String body;
    bool edited;
    dynamic topAwardedType;
    dynamic authorFlairCssClass;
    String name;
    bool isSubmitter;
    int downs;
    List<FlairRichtext>? authorFlairRichtext;
    bool? authorPatreonFlair;
    String bodyHtml;
    Gildings gildings;
    dynamic collapsedReason;
    dynamic distinguished;
    dynamic associatedAward;
    bool stickied;
    bool? authorPremium;
    bool canGild;
    Id linkId;
    dynamic unrepliableReason;
    String? authorFlairTextColor;
    bool scoreHidden;
    String permalink;
    SubredditType subredditType;
    bool locked;
    dynamic reportReasons;
    int created;
    String? authorFlairText;
    List<dynamic> treatmentTags;
    int createdUtc;
    SubredditNamePrefixed subredditNamePrefixed;
    int controversiality;
    int depth;
    String? authorFlairBackgroundColor;
    dynamic collapsedBecauseCrowdControl;
    List<dynamic> modReports;
    dynamic numReports;
    int ups;

    HilariousData({
        required this.subredditId,
        required this.approvedAtUtc,
        required this.authorIsBlocked,
        required this.commentType,
        required this.awarders,
        required this.modReasonBy,
        required this.bannedBy,
        this.authorFlairType,
        required this.totalAwardsReceived,
        required this.subreddit,
        required this.authorFlairTemplateId,
        required this.likes,
        required this.replies,
        required this.userReports,
        required this.saved,
        required this.id,
        required this.bannedAtUtc,
        required this.modReasonTitle,
        required this.gilded,
        required this.archived,
        required this.collapsedReasonCode,
        required this.noFollow,
        required this.author,
        required this.canModPost,
        required this.sendReplies,
        required this.parentId,
        required this.score,
        this.authorFullname,
        required this.removalReason,
        required this.approvedBy,
        required this.modNote,
        required this.allAwardings,
        required this.collapsed,
        required this.body,
        required this.edited,
        required this.topAwardedType,
        required this.authorFlairCssClass,
        required this.name,
        required this.isSubmitter,
        required this.downs,
        this.authorFlairRichtext,
        this.authorPatreonFlair,
        required this.bodyHtml,
        required this.gildings,
        required this.collapsedReason,
        required this.distinguished,
        required this.associatedAward,
        required this.stickied,
        this.authorPremium,
        required this.canGild,
        required this.linkId,
        required this.unrepliableReason,
        required this.authorFlairTextColor,
        required this.scoreHidden,
        required this.permalink,
        required this.subredditType,
        required this.locked,
        required this.reportReasons,
        required this.created,
        required this.authorFlairText,
        required this.treatmentTags,
        required this.createdUtc,
        required this.subredditNamePrefixed,
        required this.controversiality,
        required this.depth,
        required this.authorFlairBackgroundColor,
        required this.collapsedBecauseCrowdControl,
        required this.modReports,
        required this.numReports,
        required this.ups,
    });

    factory HilariousData.fromJson(Map<String, dynamic> json) => HilariousData(
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        approvedAtUtc: json["approved_at_utc"],
        authorIsBlocked: json["author_is_blocked"],
        commentType: json["comment_type"],
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        modReasonBy: json["mod_reason_by"],
        bannedBy: json["banned_by"],
        authorFlairType: authorFlairTypeValues.map[json["author_flair_type"]]!,
        totalAwardsReceived: json["total_awards_received"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        authorFlairTemplateId: json["author_flair_template_id"],
        likes: json["likes"],
        replies: DataRepliesClass.fromJson(json["replies"]),
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        id: json["id"],
        bannedAtUtc: json["banned_at_utc"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        archived: json["archived"],
        collapsedReasonCode: json["collapsed_reason_code"],
        noFollow: json["no_follow"],
        author: json["author"],
        canModPost: json["can_mod_post"],
        sendReplies: json["send_replies"],
        parentId: json["parent_id"],
        score: json["score"],
        authorFullname: json["author_fullname"],
        removalReason: json["removal_reason"],
        approvedBy: json["approved_by"],
        modNote: json["mod_note"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        collapsed: json["collapsed"],
        body: json["body"],
        edited: json["edited"],
        topAwardedType: json["top_awarded_type"],
        authorFlairCssClass: json["author_flair_css_class"],
        name: json["name"],
        isSubmitter: json["is_submitter"],
        downs: json["downs"],
        authorFlairRichtext: json["author_flair_richtext"] == null ? [] : List<FlairRichtext>.from(json["author_flair_richtext"]!.map((x) => FlairRichtext.fromJson(x))),
        authorPatreonFlair: json["author_patreon_flair"],
        bodyHtml: json["body_html"],
        gildings: Gildings.fromJson(json["gildings"]),
        collapsedReason: json["collapsed_reason"],
        distinguished: json["distinguished"],
        associatedAward: json["associated_award"],
        stickied: json["stickied"],
        authorPremium: json["author_premium"],
        canGild: json["can_gild"],
        linkId: idValues.map[json["link_id"]]!,
        unrepliableReason: json["unrepliable_reason"],
        authorFlairTextColor: json["author_flair_text_color"],
        scoreHidden: json["score_hidden"],
        permalink: json["permalink"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        locked: json["locked"],
        reportReasons: json["report_reasons"],
        created: json["created"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        createdUtc: json["created_utc"],
        subredditNamePrefixed: subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        controversiality: json["controversiality"],
        depth: json["depth"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        numReports: json["num_reports"],
        ups: json["ups"],
    );

    Map<String, dynamic> toJson() => {
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "approved_at_utc": approvedAtUtc,
        "author_is_blocked": authorIsBlocked,
        "comment_type": commentType,
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "mod_reason_by": modReasonBy,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairTypeValues.reverse[authorFlairType],
        "total_awards_received": totalAwardsReceived,
        "subreddit": subredditValues.reverse[subreddit],
        "author_flair_template_id": authorFlairTemplateId,
        "likes": likes,
        "replies": replies.toJson(),
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved,
        "id": id,
        "banned_at_utc": bannedAtUtc,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "archived": archived,
        "collapsed_reason_code": collapsedReasonCode,
        "no_follow": noFollow,
        "author": author,
        "can_mod_post": canModPost,
        "send_replies": sendReplies,
        "parent_id": parentId,
        "score": score,
        "author_fullname": authorFullname,
        "removal_reason": removalReason,
        "approved_by": approvedBy,
        "mod_note": modNote,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        "collapsed": collapsed,
        "body": body,
        "edited": edited,
        "top_awarded_type": topAwardedType,
        "author_flair_css_class": authorFlairCssClass,
        "name": name,
        "is_submitter": isSubmitter,
        "downs": downs,
        "author_flair_richtext": authorFlairRichtext == null ? [] : List<dynamic>.from(authorFlairRichtext!.map((x) => x.toJson())),
        "author_patreon_flair": authorPatreonFlair,
        "body_html": bodyHtml,
        "gildings": gildings.toJson(),
        "collapsed_reason": collapsedReason,
        "distinguished": distinguished,
        "associated_award": associatedAward,
        "stickied": stickied,
        "author_premium": authorPremium,
        "can_gild": canGild,
        "link_id": idValues.reverse[linkId],
        "unrepliable_reason": unrepliableReason,
        "author_flair_text_color": authorFlairTextColor,
        "score_hidden": scoreHidden,
        "permalink": permalink,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "locked": locked,
        "report_reasons": reportReasons,
        "created": created,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "created_utc": createdUtc,
        "subreddit_name_prefixed": subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "controversiality": controversiality,
        "depth": depth,
        "author_flair_background_color": authorFlairBackgroundColor,
        "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "num_reports": numReports,
        "ups": ups,
    };
}

class DataRepliesClass {
    String kind;
    AmbitiousData data;

    DataRepliesClass({
        required this.kind,
        required this.data,
    });

    factory DataRepliesClass.fromJson(Map<String, dynamic> json) => DataRepliesClass(
        kind: json["kind"],
        data: AmbitiousData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
    };
}

class AmbitiousData {
    dynamic after;
    dynamic dist;
    dynamic modhash;
    String geoFilter;
    List<IndigoChild> children;
    dynamic before;

    AmbitiousData({
        required this.after,
        required this.dist,
        required this.modhash,
        required this.geoFilter,
        required this.children,
        required this.before,
    });

    factory AmbitiousData.fromJson(Map<String, dynamic> json) => AmbitiousData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<IndigoChild>.from(json["children"].map((x) => IndigoChild.fromJson(x))),
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
    };
}

class IndigoChild {
    Kind kind;
    CunningData data;

    IndigoChild({
        required this.kind,
        required this.data,
    });

    factory IndigoChild.fromJson(Map<String, dynamic> json) => IndigoChild(
        kind: kindValues.map[json["kind"]]!,
        data: CunningData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
    };
}

class CunningData {
    SubredditId subredditId;
    dynamic approvedAtUtc;
    bool authorIsBlocked;
    dynamic commentType;
    List<dynamic> awarders;
    dynamic modReasonBy;
    dynamic bannedBy;
    E? authorFlairType;
    int totalAwardsReceived;
    Subreddit subreddit;
    dynamic authorFlairTemplateId;
    dynamic distinguished;
    dynamic likes;
    dynamic replies;
    List<dynamic> userReports;
    bool saved;
    String id;
    dynamic bannedAtUtc;
    dynamic modReasonTitle;
    int gilded;
    bool archived;
    String? collapsedReasonCode;
    bool noFollow;
    String author;
    bool canModPost;
    bool sendReplies;
    String parentId;
    int score;
    String? authorFullname;
    dynamic removalReason;
    dynamic approvedBy;
    dynamic modNote;
    List<dynamic> allAwardings;
    String body;
    bool edited;
    dynamic authorFlairCssClass;
    String name;
    bool isSubmitter;
    int downs;
    List<dynamic>? authorFlairRichtext;
    bool? authorPatreonFlair;
    String bodyHtml;
    Gildings gildings;
    String? collapsedReason;
    Id linkId;
    dynamic associatedAward;
    bool stickied;
    bool? authorPremium;
    bool canGild;
    dynamic topAwardedType;
    dynamic unrepliableReason;
    String? authorFlairTextColor;
    List<dynamic> treatmentTags;
    bool scoreHidden;
    String permalink;
    SubredditType subredditType;
    bool locked;
    dynamic reportReasons;
    int created;
    dynamic authorFlairText;
    bool collapsed;
    int createdUtc;
    SubredditNamePrefixed subredditNamePrefixed;
    int controversiality;
    int depth;
    String? authorFlairBackgroundColor;
    dynamic collapsedBecauseCrowdControl;
    List<dynamic> modReports;
    dynamic numReports;
    int ups;

    CunningData({
        required this.subredditId,
        required this.approvedAtUtc,
        required this.authorIsBlocked,
        required this.commentType,
        required this.awarders,
        required this.modReasonBy,
        required this.bannedBy,
        this.authorFlairType,
        required this.totalAwardsReceived,
        required this.subreddit,
        required this.authorFlairTemplateId,
        required this.distinguished,
        required this.likes,
        required this.replies,
        required this.userReports,
        required this.saved,
        required this.id,
        required this.bannedAtUtc,
        required this.modReasonTitle,
        required this.gilded,
        required this.archived,
        required this.collapsedReasonCode,
        required this.noFollow,
        required this.author,
        required this.canModPost,
        required this.sendReplies,
        required this.parentId,
        required this.score,
        this.authorFullname,
        required this.removalReason,
        required this.approvedBy,
        required this.modNote,
        required this.allAwardings,
        required this.body,
        required this.edited,
        required this.authorFlairCssClass,
        required this.name,
        required this.isSubmitter,
        required this.downs,
        this.authorFlairRichtext,
        this.authorPatreonFlair,
        required this.bodyHtml,
        required this.gildings,
        required this.collapsedReason,
        required this.linkId,
        required this.associatedAward,
        required this.stickied,
        this.authorPremium,
        required this.canGild,
        required this.topAwardedType,
        required this.unrepliableReason,
        required this.authorFlairTextColor,
        required this.treatmentTags,
        required this.scoreHidden,
        required this.permalink,
        required this.subredditType,
        required this.locked,
        required this.reportReasons,
        required this.created,
        required this.authorFlairText,
        required this.collapsed,
        required this.createdUtc,
        required this.subredditNamePrefixed,
        required this.controversiality,
        required this.depth,
        required this.authorFlairBackgroundColor,
        required this.collapsedBecauseCrowdControl,
        required this.modReports,
        required this.numReports,
        required this.ups,
    });

    factory CunningData.fromJson(Map<String, dynamic> json) => CunningData(
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        approvedAtUtc: json["approved_at_utc"],
        authorIsBlocked: json["author_is_blocked"],
        commentType: json["comment_type"],
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        modReasonBy: json["mod_reason_by"],
        bannedBy: json["banned_by"],
        authorFlairType: eValues.map[json["author_flair_type"]]!,
        totalAwardsReceived: json["total_awards_received"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        authorFlairTemplateId: json["author_flair_template_id"],
        distinguished: json["distinguished"],
        likes: json["likes"],
        replies: json["replies"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        id: json["id"],
        bannedAtUtc: json["banned_at_utc"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        archived: json["archived"],
        collapsedReasonCode: json["collapsed_reason_code"],
        noFollow: json["no_follow"],
        author: json["author"],
        canModPost: json["can_mod_post"],
        sendReplies: json["send_replies"],
        parentId: json["parent_id"],
        score: json["score"],
        authorFullname: json["author_fullname"],
        removalReason: json["removal_reason"],
        approvedBy: json["approved_by"],
        modNote: json["mod_note"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        body: json["body"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        name: json["name"],
        isSubmitter: json["is_submitter"],
        downs: json["downs"],
        authorFlairRichtext: json["author_flair_richtext"] == null ? [] : List<dynamic>.from(json["author_flair_richtext"]!.map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        bodyHtml: json["body_html"],
        gildings: Gildings.fromJson(json["gildings"]),
        collapsedReason: json["collapsed_reason"],
        linkId: idValues.map[json["link_id"]]!,
        associatedAward: json["associated_award"],
        stickied: json["stickied"],
        authorPremium: json["author_premium"],
        canGild: json["can_gild"],
        topAwardedType: json["top_awarded_type"],
        unrepliableReason: json["unrepliable_reason"],
        authorFlairTextColor: json["author_flair_text_color"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        scoreHidden: json["score_hidden"],
        permalink: json["permalink"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        locked: json["locked"],
        reportReasons: json["report_reasons"],
        created: json["created"],
        authorFlairText: json["author_flair_text"],
        collapsed: json["collapsed"],
        createdUtc: json["created_utc"],
        subredditNamePrefixed: subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        controversiality: json["controversiality"],
        depth: json["depth"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        numReports: json["num_reports"],
        ups: json["ups"],
    );

    Map<String, dynamic> toJson() => {
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "approved_at_utc": approvedAtUtc,
        "author_is_blocked": authorIsBlocked,
        "comment_type": commentType,
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "mod_reason_by": modReasonBy,
        "banned_by": bannedBy,
        "author_flair_type": eValues.reverse[authorFlairType],
        "total_awards_received": totalAwardsReceived,
        "subreddit": subredditValues.reverse[subreddit],
        "author_flair_template_id": authorFlairTemplateId,
        "distinguished": distinguished,
        "likes": likes,
        "replies": replies,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved,
        "id": id,
        "banned_at_utc": bannedAtUtc,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "archived": archived,
        "collapsed_reason_code": collapsedReasonCode,
        "no_follow": noFollow,
        "author": author,
        "can_mod_post": canModPost,
        "send_replies": sendReplies,
        "parent_id": parentId,
        "score": score,
        "author_fullname": authorFullname,
        "removal_reason": removalReason,
        "approved_by": approvedBy,
        "mod_note": modNote,
        "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        "body": body,
        "edited": edited,
        "author_flair_css_class": authorFlairCssClass,
        "name": name,
        "is_submitter": isSubmitter,
        "downs": downs,
        "author_flair_richtext": authorFlairRichtext == null ? [] : List<dynamic>.from(authorFlairRichtext!.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "body_html": bodyHtml,
        "gildings": gildings.toJson(),
        "collapsed_reason": collapsedReason,
        "link_id": idValues.reverse[linkId],
        "associated_award": associatedAward,
        "stickied": stickied,
        "author_premium": authorPremium,
        "can_gild": canGild,
        "top_awarded_type": topAwardedType,
        "unrepliable_reason": unrepliableReason,
        "author_flair_text_color": authorFlairTextColor,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "score_hidden": scoreHidden,
        "permalink": permalink,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "locked": locked,
        "report_reasons": reportReasons,
        "created": created,
        "author_flair_text": authorFlairText,
        "collapsed": collapsed,
        "created_utc": createdUtc,
        "subreddit_name_prefixed": subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "controversiality": controversiality,
        "depth": depth,
        "author_flair_background_color": authorFlairBackgroundColor,
        "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "num_reports": numReports,
        "ups": ups,
    };
}

class StickyReplies {
    String kind;
    MagentaData data;

    StickyReplies({
        required this.kind,
        required this.data,
    });

    factory StickyReplies.fromJson(Map<String, dynamic> json) => StickyReplies(
        kind: json["kind"],
        data: MagentaData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
    };
}

class MagentaData {
    dynamic after;
    dynamic dist;
    dynamic modhash;
    String geoFilter;
    List<IndecentChild> children;
    dynamic before;

    MagentaData({
        required this.after,
        required this.dist,
        required this.modhash,
        required this.geoFilter,
        required this.children,
        required this.before,
    });

    factory MagentaData.fromJson(Map<String, dynamic> json) => MagentaData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<IndecentChild>.from(json["children"].map((x) => IndecentChild.fromJson(x))),
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "before": before,
    };
}

class IndecentChild {
    Kind kind;
    FriskyData data;

    IndecentChild({
        required this.kind,
        required this.data,
    });

    factory IndecentChild.fromJson(Map<String, dynamic> json) => IndecentChild(
        kind: kindValues.map[json["kind"]]!,
        data: FriskyData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
    };
}

class FriskyData {
    SubredditId subredditId;
    dynamic approvedAtUtc;
    bool authorIsBlocked;
    dynamic commentType;
    List<dynamic> awarders;
    dynamic modReasonBy;
    dynamic bannedBy;
    AuthorFlairType authorFlairType;
    int totalAwardsReceived;
    Subreddit subreddit;
    String? authorFlairTemplateId;
    String? distinguished;
    dynamic likes;
    String replies;
    List<dynamic> userReports;
    bool saved;
    String id;
    dynamic bannedAtUtc;
    dynamic modReasonTitle;
    int gilded;
    bool archived;
    dynamic collapsedReasonCode;
    bool noFollow;
    String author;
    bool canModPost;
    bool sendReplies;
    String parentId;
    int score;
    String authorFullname;
    dynamic approvedBy;
    dynamic modNote;
    List<dynamic> allAwardings;
    String body;
    bool edited;
    Gildings gildings;
    int downs;
    dynamic authorFlairCssClass;
    String name;
    bool isSubmitter;
    bool collapsed;
    List<FlairRichtext> authorFlairRichtext;
    bool authorPatreonFlair;
    String bodyHtml;
    dynamic removalReason;
    dynamic collapsedReason;
    Id linkId;
    dynamic associatedAward;
    bool stickied;
    bool authorPremium;
    bool canGild;
    dynamic topAwardedType;
    dynamic unrepliableReason;
    String? authorFlairTextColor;
    bool scoreHidden;
    String permalink;
    SubredditType subredditType;
    bool locked;
    dynamic reportReasons;
    int created;
    String? authorFlairText;
    List<dynamic> treatmentTags;
    int createdUtc;
    SubredditNamePrefixed subredditNamePrefixed;
    int controversiality;
    int depth;
    String? authorFlairBackgroundColor;
    dynamic collapsedBecauseCrowdControl;
    List<dynamic> modReports;
    dynamic numReports;
    int ups;

    FriskyData({
        required this.subredditId,
        required this.approvedAtUtc,
        required this.authorIsBlocked,
        required this.commentType,
        required this.awarders,
        required this.modReasonBy,
        required this.bannedBy,
        required this.authorFlairType,
        required this.totalAwardsReceived,
        required this.subreddit,
        required this.authorFlairTemplateId,
        required this.distinguished,
        required this.likes,
        required this.replies,
        required this.userReports,
        required this.saved,
        required this.id,
        required this.bannedAtUtc,
        required this.modReasonTitle,
        required this.gilded,
        required this.archived,
        required this.collapsedReasonCode,
        required this.noFollow,
        required this.author,
        required this.canModPost,
        required this.sendReplies,
        required this.parentId,
        required this.score,
        required this.authorFullname,
        required this.approvedBy,
        required this.modNote,
        required this.allAwardings,
        required this.body,
        required this.edited,
        required this.gildings,
        required this.downs,
        required this.authorFlairCssClass,
        required this.name,
        required this.isSubmitter,
        required this.collapsed,
        required this.authorFlairRichtext,
        required this.authorPatreonFlair,
        required this.bodyHtml,
        required this.removalReason,
        required this.collapsedReason,
        required this.linkId,
        required this.associatedAward,
        required this.stickied,
        required this.authorPremium,
        required this.canGild,
        required this.topAwardedType,
        required this.unrepliableReason,
        required this.authorFlairTextColor,
        required this.scoreHidden,
        required this.permalink,
        required this.subredditType,
        required this.locked,
        required this.reportReasons,
        required this.created,
        required this.authorFlairText,
        required this.treatmentTags,
        required this.createdUtc,
        required this.subredditNamePrefixed,
        required this.controversiality,
        required this.depth,
        required this.authorFlairBackgroundColor,
        required this.collapsedBecauseCrowdControl,
        required this.modReports,
        required this.numReports,
        required this.ups,
    });

    factory FriskyData.fromJson(Map<String, dynamic> json) => FriskyData(
        subredditId: subredditIdValues.map[json["subreddit_id"]]!,
        approvedAtUtc: json["approved_at_utc"],
        authorIsBlocked: json["author_is_blocked"],
        commentType: json["comment_type"],
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        modReasonBy: json["mod_reason_by"],
        bannedBy: json["banned_by"],
        authorFlairType: authorFlairTypeValues.map[json["author_flair_type"]]!,
        totalAwardsReceived: json["total_awards_received"],
        subreddit: subredditValues.map[json["subreddit"]]!,
        authorFlairTemplateId: json["author_flair_template_id"],
        distinguished: json["distinguished"],
        likes: json["likes"],
        replies: json["replies"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"],
        id: json["id"],
        bannedAtUtc: json["banned_at_utc"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        archived: json["archived"],
        collapsedReasonCode: json["collapsed_reason_code"],
        noFollow: json["no_follow"],
        author: json["author"],
        canModPost: json["can_mod_post"],
        sendReplies: json["send_replies"],
        parentId: json["parent_id"],
        score: json["score"],
        authorFullname: json["author_fullname"],
        approvedBy: json["approved_by"],
        modNote: json["mod_note"],
        allAwardings: List<dynamic>.from(json["all_awardings"].map((x) => x)),
        body: json["body"],
        edited: json["edited"],
        gildings: Gildings.fromJson(json["gildings"]),
        downs: json["downs"],
        authorFlairCssClass: json["author_flair_css_class"],
        name: json["name"],
        isSubmitter: json["is_submitter"],
        collapsed: json["collapsed"],
        authorFlairRichtext: List<FlairRichtext>.from(json["author_flair_richtext"].map((x) => FlairRichtext.fromJson(x))),
        authorPatreonFlair: json["author_patreon_flair"],
        bodyHtml: json["body_html"],
        removalReason: json["removal_reason"],
        collapsedReason: json["collapsed_reason"],
        linkId: idValues.map[json["link_id"]]!,
        associatedAward: json["associated_award"],
        stickied: json["stickied"],
        authorPremium: json["author_premium"],
        canGild: json["can_gild"],
        topAwardedType: json["top_awarded_type"],
        unrepliableReason: json["unrepliable_reason"],
        authorFlairTextColor: json["author_flair_text_color"],
        scoreHidden: json["score_hidden"],
        permalink: json["permalink"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]]!,
        locked: json["locked"],
        reportReasons: json["report_reasons"],
        created: json["created"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        createdUtc: json["created_utc"],
        subredditNamePrefixed: subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]]!,
        controversiality: json["controversiality"],
        depth: json["depth"],
        authorFlairBackgroundColor: json["author_flair_background_color"],
        collapsedBecauseCrowdControl: json["collapsed_because_crowd_control"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        numReports: json["num_reports"],
        ups: json["ups"],
    );

    Map<String, dynamic> toJson() => {
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "approved_at_utc": approvedAtUtc,
        "author_is_blocked": authorIsBlocked,
        "comment_type": commentType,
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "mod_reason_by": modReasonBy,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairTypeValues.reverse[authorFlairType],
        "total_awards_received": totalAwardsReceived,
        "subreddit": subredditValues.reverse[subreddit],
        "author_flair_template_id": authorFlairTemplateId,
        "distinguished": distinguished,
        "likes": likes,
        "replies": replies,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved,
        "id": id,
        "banned_at_utc": bannedAtUtc,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "archived": archived,
        "collapsed_reason_code": collapsedReasonCode,
        "no_follow": noFollow,
        "author": author,
        "can_mod_post": canModPost,
        "send_replies": sendReplies,
        "parent_id": parentId,
        "score": score,
        "author_fullname": authorFullname,
        // "approved_by": approvedBy,
        // "mod_note": modNote,
        // "all_awardings": List<dynamic>.from(allAwardings.map((x) => x)),
        // "body": body,
        // "edited": edited,
        // "gildings": gildings.toJson(),
        // "downs": downs,
        // "author_flair_css_class": authorFlairCssClass,
        // "name": name,
        // "is_submitter": isSubmitter,
        // "collapsed": collapsed,
        // "author_flair_richtext": List<dynamic>.from(authorFlairRichtext.map((x) => x.toJson())),
        // "author_patreon_flair": authorPatreonFlair,
        // "body_html": bodyHtml,
        // "removal_reason": removalReason,
        // "collapsed_reason": collapsedReason,
        // "link_id": idValues.reverse[linkId],
        // "associated_award": associatedAward,
        // "stickied": stickied,
        // "author_premium": authorPremium,
        // "can_gild": canGild,
        // "top_awarded_type": topAwardedType,
        // "unrepliable_reason": unrepliableReason,
        // "author_flair_text_color": authorFlairTextColor,
        // "score_hidden": scoreHidden,
        // "permalink": permalink,
        // "subreddit_type": subredditTypeValues.reverse[subredditType],
        // "locked": locked,
        // "report_reasons": reportReasons,
        // "created": created,
        // "author_flair_text": authorFlairText,
        // "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        // "created_utc": createdUtc,
        // "subreddit_name_prefixed": subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        // "controversiality": controversiality,
        // "depth": depth,
        // "author_flair_background_color": authorFlairBackgroundColor,
        // "collapsed_because_crowd_control": collapsedBecauseCrowdControl,
        // "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "num_reports": numReports,
        "ups": ups,
    };
}

enum Subreddit {
    EURO2024
}

final subredditValues = EnumValues({
    "euro2024": Subreddit.EURO2024
});

enum SubredditId {
    T5_36_YP9
}

final subredditIdValues = EnumValues({
    "t5_36yp9": SubredditId.T5_36_YP9
});

enum SubredditNamePrefixed {
    R_EURO2024
}

final subredditNamePrefixedValues = EnumValues({
    "r/euro2024": SubredditNamePrefixed.R_EURO2024
});

enum SubredditType {
    PUBLIC
}

final subredditTypeValues = EnumValues({
    "public": SubredditType.PUBLIC
});

enum Kind {
    T1,
    T3
}

final kindValues = EnumValues({
    "t1": Kind.T1,
    "t3": Kind.T3
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
