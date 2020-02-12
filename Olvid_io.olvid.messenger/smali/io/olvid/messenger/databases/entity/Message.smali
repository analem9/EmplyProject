.class public Lio/olvid/messenger/databases/entity/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;,
        Lio/olvid/messenger/databases/entity/Message$JsonReply;,
        Lio/olvid/messenger/databases/entity/Message$JsonMessage;,
        Lio/olvid/messenger/databases/entity/Message$JsonPayload;
    }
.end annotation


# static fields
.field public static final CONTENT_BODY:Ljava/lang/String; = "content_body"

.field public static final DISCUSSION_ID:Ljava/lang/String; = "discussion_id"

.field public static final ENGINE_MESSAGE_IDENTIFIER:Ljava/lang/String; = "engine_message_identifier"

.field public static final IMAGE_COUNT:Ljava/lang/String; = "image_count"

.field public static final JSON_REPLY:Ljava/lang/String; = "json_reply"

.field public static final JSON_RETURN_RECEIPT:Ljava/lang/String; = "json_return_receipt"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final RETURN_RECEIPT_STATUS_DELIVERED:I = 0x1

.field public static final RETURN_RECEIPT_STATUS_READ:I = 0x2

.field public static final SENDER_IDENTIFIER:Ljava/lang/String; = "sender_identifier"

.field public static final SENDER_SEQUENCE_NUMBER:Ljava/lang/String; = "sender_sequence_number"

.field public static final SENDER_THREAD_IDENTIFIER:Ljava/lang/String; = "sender_thread_identifier"

.field public static final SORT_INDEX:Ljava/lang/String; = "sort_index"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_DELIVERED:I = 0x6

.field public static final STATUS_DELIVERED_AND_READ:I = 0x7

.field public static final STATUS_DRAFT:I = 0x5

.field public static final STATUS_NONE:I = -0x1

.field public static final STATUS_PROCESSING:I = 0x1

.field public static final STATUS_READ:I = 0x4

.field public static final STATUS_SENT:I = 0x2

.field public static final STATUS_UNPROCESSED:I = 0x0

.field public static final STATUS_UNREAD:I = 0x3

.field public static final TABLE_NAME:Ljava/lang/String; = "message_table"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TOTAL_ATTACHMENT_COUNT:Ljava/lang/String; = "total_attachment_count"

.field public static final TYPE_CONTACT_DELETED:I = 0x5

.field public static final TYPE_GROUP_MEMBER_JOINED:I = 0x2

.field public static final TYPE_GROUP_MEMBER_LEFT:I = 0x3

.field public static final TYPE_INBOUND_MESSAGE:I = 0x0

.field public static final TYPE_LEFT_GROUP:I = 0x4

.field public static final TYPE_OUTBOUND_MESSAGE:I = 0x1

.field private static final sortIndexLock:Ljava/lang/Object;


# instance fields
.field public contentBody:Ljava/lang/String;

.field public discussionId:J

.field public engineMessageIdentifier:[B

.field public id:J

.field public imageCount:I

.field public jsonReply:Ljava/lang/String;

.field public jsonReturnReceipt:Ljava/lang/String;

.field public messageType:I

.field public senderIdentifier:[B

.field public senderSequenceNumber:J

.field public senderThreadIdentifier:Ljava/util/UUID;

.field public sortIndex:D

.field public status:I

.field public timestamp:J

.field public totalAttachmentCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/olvid/messenger/databases/entity/Message;->sortIndexLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V
    .locals 3

    move-object v0, p0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 147
    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    move-object v1, p3

    .line 148
    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    move-object v1, p4

    .line 149
    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    move-object v1, p5

    .line 150
    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;

    move-wide v1, p6

    .line 151
    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    move-wide v1, p8

    .line 152
    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    move v1, p10

    .line 153
    iput v1, v0, Lio/olvid/messenger/databases/entity/Message;->status:I

    move v1, p11

    .line 154
    iput v1, v0, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    move-wide v1, p12

    .line 155
    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    move-object/from16 v1, p14

    .line 156
    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->engineMessageIdentifier:[B

    move-object/from16 v1, p15

    .line 157
    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    move-object/from16 v1, p16

    .line 158
    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    move/from16 v1, p17

    .line 159
    iput v1, v0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    move/from16 v1, p18

    .line 160
    iput v1, v0, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    return-void
.end method

.method public constructor <init>(Lio/olvid/messenger/databases/AppDatabase;JLio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;JIIJ[B[BLjava/util/UUID;II)V
    .locals 5

    move-object v1, p0

    move v2, p9

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v3, p2

    .line 166
    iput-wide v3, v1, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    move-object v0, p4

    .line 167
    invoke-virtual {p0, p4}, Lio/olvid/messenger/databases/entity/Message;->setJsonMessage(Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V

    .line 169
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    move-object v3, p5

    invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    :goto_0
    move-wide v3, p6

    .line 173
    iput-wide v3, v1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    move v3, p8

    .line 174
    iput v3, v1, Lio/olvid/messenger/databases/entity/Message;->status:I

    .line 175
    iput v2, v1, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    move-wide v3, p10

    .line 176
    iput-wide v3, v1, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    move-object/from16 v3, p12

    .line 177
    iput-object v3, v1, Lio/olvid/messenger/databases/entity/Message;->engineMessageIdentifier:[B

    move-object/from16 v3, p13

    .line 178
    iput-object v3, v1, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    move-object/from16 v3, p14

    .line 179
    iput-object v3, v1, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    move/from16 v3, p15

    .line 180
    iput v3, v1, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    move/from16 v3, p16

    .line 181
    iput v3, v1, Lio/olvid/messenger/databases/entity/Message;->imageCount:I

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lio/olvid/messenger/databases/entity/Message;->computeOutboundSortIndex(Lio/olvid/messenger/databases/AppDatabase;)V

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lio/olvid/messenger/databases/entity/Message;->computeSortIndex(Lio/olvid/messenger/databases/AppDatabase;)V

    :goto_1
    return-void
.end method

.method public static createContactDeletedMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;
    .locals 20

    move-wide/from16 v12, p1

    move-object/from16 v15, p3

    .line 297
    new-instance v19, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v0, v19

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v6, v1

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/UUID;

    move-object/from16 v16, v1

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    return-object v19
.end method

.method public static createEmptyDraft(J[BLjava/util/UUID;)Lio/olvid/messenger/databases/entity/Message;
    .locals 20

    move-wide/from16 v12, p0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    .line 233
    new-instance v19, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v0, v19

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v6, v1

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    return-object v19
.end method

.method public static createLeftGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;
    .locals 20

    move-wide/from16 v12, p1

    move-object/from16 v15, p3

    .line 281
    new-instance v19, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v0, v19

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v6, v1

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/UUID;

    move-object/from16 v16, v1

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x4

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    return-object v19
.end method

.method public static createMemberJoinedGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;
    .locals 20

    move-wide/from16 v12, p1

    move-object/from16 v15, p3

    .line 249
    new-instance v19, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v0, v19

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v6, v1

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/UUID;

    move-object/from16 v16, v1

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    return-object v19
.end method

.method public static createMemberLeftGroupMessage(Lio/olvid/messenger/databases/AppDatabase;J[B)Lio/olvid/messenger/databases/entity/Message;
    .locals 20

    move-wide/from16 v12, p1

    move-object/from16 v15, p3

    .line 265
    new-instance v19, Lio/olvid/messenger/databases/entity/Message;

    move-object/from16 v0, v19

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v6, v1

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/UUID;

    move-object/from16 v16, v1

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x3

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lio/olvid/messenger/databases/entity/Message;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DJIIJ[B[BLjava/util/UUID;II)V

    return-object v19
.end method

.method private getMessagePayloadAsBytes([B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Message;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {v0, p1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->setGroupOwnerAndUid([B)V

    .line 571
    :cond_0
    new-instance p1, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    invoke-direct {p1, p2, p3}, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;-><init>([B[B)V

    .line 572
    new-instance p2, Lio/olvid/messenger/databases/entity/Message$JsonPayload;

    invoke-direct {p2, v0, p1}, Lio/olvid/messenger/databases/entity/Message$JsonPayload;-><init>(Lio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;)V

    .line 573
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public computeOutboundSortIndex(Lio/olvid/messenger/databases/AppDatabase;)V
    .locals 5

    .line 226
    sget-object v0, Lio/olvid/messenger/databases/entity/Message;->sortIndexLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object p1

    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-interface {p1, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->getDiscussionMaxSortIndex(J)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    add-double/2addr v1, v3

    .line 228
    iput-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public computeSortIndex(Lio/olvid/messenger/databases/AppDatabase;)V
    .locals 12

    .line 194
    sget-object v0, Lio/olvid/messenger/databases/entity/Message;->sortIndexLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object p1

    .line 197
    iget-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    iget-object v4, p0, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    iget-object v5, p0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    iget-wide v6, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lio/olvid/messenger/databases/dao/MessageDao;->getNextMessageBySequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_2

    .line 198
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iget-wide v4, p0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    iget-wide v4, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-interface {p1, v2, v3, v4, v5}, Lio/olvid/messenger/databases/dao/MessageDao;->getPreviousSortIndex(DJ)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iput-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    goto :goto_0

    .line 217
    :cond_1
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    .line 220
    :goto_0
    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iput-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    goto :goto_4

    .line 199
    :cond_2
    :goto_1
    iget-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    iget-object v4, p0, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    iget-object v5, p0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    iget-wide v6, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lio/olvid/messenger/databases/dao/MessageDao;->getPreviousMessageBySequenceNumber(JLjava/util/UUID;[BJ)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 200
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iget-wide v4, p0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    goto :goto_3

    .line 203
    :cond_3
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    iget-wide v4, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-interface {p1, v2, v3, v4, v5}, Lio/olvid/messenger/databases/dao/MessageDao;->getNextSortIndex(DJ)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 205
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v2, v8

    iput-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    goto :goto_2

    .line 207
    :cond_4
    iget-wide v2, v1, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    add-double/2addr v2, v10

    iput-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    .line 210
    :goto_2
    iget-wide v1, v1, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    iput-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    goto :goto_4

    .line 201
    :cond_5
    :goto_3
    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->timestamp:J

    long-to-double v1, v1

    iput-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->sortIndex:D

    .line 222
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;
    .locals 4

    .line 577
    new-instance v0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    invoke-direct {v0}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;-><init>()V

    .line 578
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->body:Ljava/lang/String;

    .line 579
    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->senderSequenceNumber:J

    .line 580
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->senderThreadIdentifier:Ljava/util/UUID;

    .line 581
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 583
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    const-class v3, Lio/olvid/messenger/databases/entity/Message$JsonReply;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Message$JsonReply;

    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getJsonReturnReceipt()Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;
    .locals 3

    .line 603
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 605
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;

    const-class v2, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 607
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error decoding a return receipt!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReturnReceipt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .line 142
    iget v0, p0, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextOnly()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWithoutText()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public post(Z)V
    .locals 23

    move-object/from16 v1, p0

    .line 314
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    iget-wide v3, v1, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-virtual {v2, v3, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v2

    .line 317
    iget-object v3, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v3

    iget-object v5, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v6, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-interface {v3, v5, v6}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->getGroupContactsSync([B[B)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 319
    :cond_0
    iget-object v3, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz v3, :cond_e

    .line 320
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v5

    iget-object v6, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v7, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    invoke-interface {v5, v6, v7}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/entity/Contact;

    .line 332
    iget v8, v7, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez v8, :cond_1

    .line 334
    iget-object v6, v7, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_1

    .line 336
    :cond_1
    new-instance v8, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    iget-wide v10, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v8, v10, v11, v7}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B)V

    .line 337
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    if-eqz p1, :cond_3

    const v0, 0x7f100203

    .line 342
    invoke-static {v0, v4}, Lio/olvid/messenger/App;->toast(II)V

    :cond_3
    return-void

    .line 346
    :cond_4
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v3

    iget-wide v6, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v3, v6, v7}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getFylesAndStatusForMessageSync(J)Ljava/util/List;

    move-result-object v3

    .line 347
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v13, v6, [Lio/olvid/engine/engine/types/ObvOutboundAttachment;

    const/4 v6, 0x0

    .line 348
    :goto_2
    array-length v7, v13

    if-ge v6, v7, :cond_7

    .line 349
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    .line 350
    new-instance v8, Lio/olvid/engine/engine/types/ObvOutboundAttachment;

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v10, v10, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v10, v10, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-virtual {v14}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->getMetadata()[B

    move-result-object v14

    invoke-direct {v8, v7, v10, v11, v14}, Lio/olvid/engine/engine/types/ObvOutboundAttachment;-><init>(Ljava/lang/String;J[B)V

    aput-object v8, v13, v6

    .line 351
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget v7, v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    if-eqz p1, :cond_5

    const v0, 0x7f1001eb

    .line 354
    invoke-static {v0, v4}, Lio/olvid/messenger/App;->toast(II)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 360
    :cond_7
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/engine/Engine;->getReturnReceiptNonce()[B

    move-result-object v15

    .line 361
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/engine/Engine;->getReturnReceiptKey()[B

    move-result-object v14

    .line 363
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    iget-object v7, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    .line 364
    invoke-direct {v1, v7, v15, v14}, Lio/olvid/messenger/databases/entity/Message;->getMessagePayloadAsBytes([B[B[B)[B

    move-result-object v7

    iget-object v10, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    const/4 v11, 0x1

    move-object v8, v13

    .line 363
    invoke-virtual/range {v6 .. v11}, Lio/olvid/engine/engine/Engine;->post([B[Lio/olvid/engine/engine/types/ObvOutboundAttachment;Ljava/util/List;[BZ)Lio/olvid/engine/engine/types/ObvPostMessageOutput;

    move-result-object v6

    .line 371
    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->isMessageSent()Z

    move-result v7

    if-nez v7, :cond_8

    return-void

    :cond_8
    const/4 v7, 0x0

    .line 377
    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->getMessageIdentifierByContactIdentity()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    .line 378
    invoke-virtual {v6}, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->getMessageIdentifierByContactIdentity()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 379
    new-instance v11, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    move-object/from16 v21, v13

    iget-wide v12, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;->getBytes()[B

    move-result-object v17

    move-object v9, v14

    move-object v14, v11

    move-object/from16 v22, v15

    move-wide v15, v12

    move-object/from16 v18, v10

    move-object/from16 v19, v22

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;-><init>(J[B[B[B[B)V

    .line 380
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_9

    if-eqz v10, :cond_9

    move-object v7, v10

    :cond_9
    move-object v14, v9

    move-object/from16 v13, v21

    move-object/from16 v15, v22

    goto :goto_3

    :cond_a
    move-object/from16 v21, v13

    move-object/from16 v6, v21

    const/4 v8, 0x0

    .line 385
    :goto_4
    array-length v9, v6

    if-ge v8, v9, :cond_b

    .line 386
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v9, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 387
    iput-object v7, v9, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    .line 388
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v9, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 413
    :cond_b
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    invoke-interface {v7, v5}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->insert([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    const/4 v5, 0x0

    .line 416
    :goto_5
    array-length v7, v6

    if-ge v5, v7, :cond_c

    .line 417
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    const/4 v8, 0x3

    .line 418
    iput v8, v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 419
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v8

    invoke-interface {v8, v7}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 421
    :cond_c
    iput v4, v1, Lio/olvid/messenger/databases/entity/Message;->status:I

    .line 422
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    .line 423
    iget-object v0, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-nez v0, :cond_d

    .line 424
    array-length v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    goto :goto_6

    .line 426
    :cond_d
    array-length v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    goto :goto_6

    :cond_e
    const-string v0, "Trying to post in a locked discussion!!!"

    .line 323
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error posting a message to the engine;"

    .line 430
    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public refreshOutboundStatus()Z
    .locals 6

    .line 516
    iget v0, p0, Lio/olvid/messenger/databases/entity/Message;->messageType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 519
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v0

    iget-wide v3, p0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v3, v4}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->getAllByMessageId(J)Ljava/util/List;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const v3, 0x186a0

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    .line 525
    iget-object v5, v4, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    if-nez v5, :cond_2

    .line 526
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 527
    :cond_2
    iget-object v5, v4, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    if-nez v5, :cond_3

    const/4 v4, 0x2

    .line 528
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 529
    :cond_3
    iget-object v4, v4, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    if-nez v4, :cond_4

    const/4 v4, 0x6

    .line 530
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v4, 0x7

    .line 532
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 535
    :cond_5
    iget v0, p0, Lio/olvid/messenger/databases/entity/Message;->status:I

    if-eq v3, v0, :cond_6

    .line 536
    iput v3, p0, Lio/olvid/messenger/databases/entity/Message;->status:I

    return v2

    :cond_6
    return v1
.end method

.method public repost(Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V
    .locals 14

    .line 436
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    .line 439
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-nez v2, :cond_3

    .line 441
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    if-nez v1, :cond_0

    new-array v1, v4, [B

    .line 442
    iput-object v1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 444
    :cond_0
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    .line 445
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 447
    :cond_1
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v1

    new-array v2, v3, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    aput-object p1, v2, v4

    invoke-interface {v1, v2}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    .line 448
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Message;->refreshOutboundStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 449
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V

    :cond_2
    return-void

    .line 454
    :cond_3
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    iget-wide v5, p0, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v2, v5, v6}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getFylesAndStatusForMessageSync(J)Ljava/util/List;

    move-result-object v2

    .line 455
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lio/olvid/engine/engine/types/ObvOutboundAttachment;

    const/4 v6, 0x0

    .line 456
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_4

    .line 457
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    .line 458
    new-instance v8, Lio/olvid/engine/engine/types/ObvOutboundAttachment;

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v9, v9, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-wide v9, v9, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-virtual {v11}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->getMetadata()[B

    move-result-object v11

    invoke-direct {v8, v7, v9, v10, v11}, Lio/olvid/engine/engine/types/ObvOutboundAttachment;-><init>(Ljava/lang/String;J[B)V

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 462
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 463
    iget-object v6, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/engine/Engine;->getReturnReceiptNonce()[B

    move-result-object v12

    .line 466
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    invoke-virtual {v6}, Lio/olvid/engine/engine/Engine;->getReturnReceiptKey()[B

    move-result-object v13

    .line 468
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    iget-object v7, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    .line 469
    invoke-direct {p0, v7, v12, v13}, Lio/olvid/messenger/databases/entity/Message;->getMessagePayloadAsBytes([B[B[B)[B

    move-result-object v7

    iget-object v10, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    const/4 v11, 0x1

    move-object v8, v5

    .line 468
    invoke-virtual/range {v6 .. v11}, Lio/olvid/engine/engine/Engine;->post([B[Lio/olvid/engine/engine/types/ObvOutboundAttachment;Ljava/util/List;[BZ)Lio/olvid/engine/engine/types/ObvPostMessageOutput;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->isMessageSent()Z

    move-result v6

    if-nez v6, :cond_5

    return-void

    .line 481
    :cond_5
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvPostMessageOutput;->getMessageIdentifierByContactIdentity()Ljava/util/HashMap;

    move-result-object v1

    new-instance v6, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;

    iget-object v7, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    invoke-direct {v6, v7}, Lio/olvid/engine/engine/types/ObvPostMessageOutput$BytesKey;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 482
    iput-object v1, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 483
    iput-object v12, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    .line 484
    iput-object v13, p1, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    .line 485
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageRecipientInfoDao()Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;

    move-result-object v6

    new-array v3, v3, [Lio/olvid/messenger/databases/entity/MessageRecipientInfo;

    aput-object p1, v3, v4

    invoke-interface {v6, v3}, Lio/olvid/messenger/databases/dao/MessageRecipientInfoDao;->update([Lio/olvid/messenger/databases/entity/MessageRecipientInfo;)V

    const/4 p1, 0x0

    .line 486
    :goto_1
    array-length v3, v5

    if-ge p1, v3, :cond_6

    .line 487
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v3, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    .line 488
    iput-object v1, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v3, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 493
    :cond_6
    :goto_2
    array-length p1, v5

    if-ge v4, p1, :cond_7

    .line 494
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    const/4 v1, 0x3

    .line 495
    iput v1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 496
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->update(Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 498
    :cond_7
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Message;->refreshOutboundStatus()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 499
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/olvid/messenger/databases/dao/MessageDao;->update(Lio/olvid/messenger/databases/entity/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 502
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Error reposting a message to the engine;"

    .line 503
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public sendReturnReceipt(Lio/olvid/messenger/databases/entity/Discussion;I)V
    .locals 12

    .line 509
    invoke-virtual {p0}, Lio/olvid/messenger/databases/entity/Message;->getJsonReturnReceipt()Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 510
    iget-wide v1, p1, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-wide v3, p0, Lio/olvid/messenger/databases/entity/Message;->discussionId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v6

    iget-object v7, p1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v8, p0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    iget-object v10, v0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->nonce:[B

    iget-object v11, v0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->key:[B

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lio/olvid/engine/engine/Engine;->sendReturnReceipt([B[BI[B[B)V

    :cond_0
    return-void
.end method

.method public setJsonMessage(Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V
    .locals 1

    .line 592
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->body:Ljava/lang/String;

    iput-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    .line 593
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    if-eqz v0, :cond_0

    .line 595
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 597
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
