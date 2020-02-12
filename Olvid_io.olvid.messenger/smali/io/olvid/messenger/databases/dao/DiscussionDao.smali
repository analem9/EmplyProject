.class public abstract Lio/olvid/messenger/databases/dao/DiscussionDao;
.super Ljava/lang/Object;
.source "DiscussionDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;,
        Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;
    }
.end annotation


# static fields
.field private static final PREFIX_DISCUSSION_COLUMNS:Ljava/lang/String; = "disc.id AS disc_id,  disc.title AS disc_title,  disc.bytes_owned_identity AS disc_bytes_owned_identity,  disc.sender_thread_identifier AS disc_sender_thread_identifier,  disc.last_outbound_message_sequence_number AS disc_last_outbound_message_sequence_number,  disc.last_message_timestamp AS disc_last_message_timestamp,  disc.bytes_contact_identity AS disc_bytes_contact_identity,  disc.bytes_group_owner_and_uid AS disc_bytes_group_owner_and_uid"

.field private static final PREFIX_DISCUSSION_CUSTOMIZATION_COLUMNS:Ljava/lang/String; = "cust.discussion_id AS cust_discussion_id, cust.serialized_color_json AS cust_serialized_color_json, cust.background_image_url AS cust_background_image_url, cust.pref_send_read_receipt AS cust_pref_send_read_receipt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Lio/olvid/messenger/databases/entity/Discussion;)V
.end method

.method public abstract deleteEmptyLockedDiscussions()V
.end method

.method public abstract getAllActiveWithContactNamesOrderedByActivity([BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllDiscussionAndLastMessages([B)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndLastMessage;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllWithContactNames([BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;
.end method

.method public abstract getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;
.end method

.method public abstract getById(J)Lio/olvid/messenger/databases/entity/Discussion;
.end method

.method public abstract getByIdAsync(J)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContactActiveGroupDiscussionsWithContactNames([B[BLjava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/DiscussionDao$DiscussionAndContactDisplayNames;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLatestDiscussionsInWhichYouWrote()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLatestDiscussionsInWhichYouWroteSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Discussion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lio/olvid/messenger/databases/entity/Discussion;)J
.end method

.method public abstract update(Lio/olvid/messenger/databases/entity/Discussion;)V
.end method
