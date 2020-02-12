.class public Lio/olvid/messenger/databases/entity/Discussion;
.super Ljava/lang/Object;
.source "Discussion.java"


# static fields
.field public static final BYTES_CONTACT_IDENTITY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final BYTES_GROUP_OWNER_AND_UID:Ljava/lang/String; = "bytes_group_owner_and_uid"

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final LAST_MESSAGE_TIMESTAMP:Ljava/lang/String; = "last_message_timestamp"

.field public static final LAST_OUTBOUND_MESSAGE_SEQUENCE_NUMBER:Ljava/lang/String; = "last_outbound_message_sequence_number"

.field public static final SENDER_THREAD_IDENTIFIER:Ljava/lang/String; = "sender_thread_identifier"

.field public static final TABLE_NAME:Ljava/lang/String; = "discussion_table"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field public bytesContactIdentity:[B

.field public bytesGroupOwnerAndUid:[B

.field public bytesOwnedIdentity:[B

.field public id:J

.field public lastMessageTimestamp:J

.field public lastOutboundMessageSequenceNumber:J

.field public senderThreadIdentifier:Ljava/util/UUID;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    .line 104
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Discussion;->senderThreadIdentifier:Ljava/util/UUID;

    .line 105
    iput-wide p4, p0, Lio/olvid/messenger/databases/entity/Discussion;->lastOutboundMessageSequenceNumber:J

    .line 106
    iput-wide p6, p0, Lio/olvid/messenger/databases/entity/Discussion;->lastMessageTimestamp:J

    .line 107
    iput-object p8, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    .line 108
    iput-object p9, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    return-void
.end method

.method public static createGroupDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;
    .locals 11

    .line 126
    new-instance v10, Lio/olvid/messenger/databases/entity/Discussion;

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    return-object v10
.end method

.method public static createOneToOneDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;
    .locals 11

    .line 113
    new-instance v10, Lio/olvid/messenger/databases/entity/Discussion;

    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lio/olvid/messenger/databases/entity/Discussion;-><init>(Ljava/lang/String;[BLjava/util/UUID;JJ[B[B)V

    return-object v10
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockWithMessage(Lio/olvid/messenger/databases/AppDatabase;)V
    .locals 3

    .line 150
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ERROR: running discussion lockWithMessage outside a transaction"

    .line 151
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Discussion;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Locking a discussion which is already locked"

    .line 155
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_1
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->deleteDiscussionDraftMessage(J)V

    .line 163
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->countMessagesInDiscussion(J)I

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz v0, :cond_2

    .line 165
    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    invoke-static {p1, v1, v2, v0}, Lio/olvid/messenger/databases/entity/Message;->createContactDeletedMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v0, :cond_3

    .line 168
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    invoke-static {p1, v0, v1, v2}, Lio/olvid/messenger/databases/entity/Message;->createLeftGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/MessageDao;->insert(Lio/olvid/messenger/databases/entity/Message;)J

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    .line 174
    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/olvid/messenger/databases/entity/Discussion;->updateLastMessageTimestamp(J)Z

    .line 176
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->delete(Lio/olvid/messenger/databases/entity/Discussion;)V

    :goto_1
    return-void
.end method

.method public updateLastMessageTimestamp(J)Z
    .locals 3

    .line 142
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Discussion;->lastMessageTimestamp:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 143
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/Discussion;->lastMessageTimestamp:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
