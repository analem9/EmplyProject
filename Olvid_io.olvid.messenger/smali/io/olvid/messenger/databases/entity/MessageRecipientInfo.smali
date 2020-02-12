.class public Lio/olvid/messenger/databases/entity/MessageRecipientInfo;
.super Ljava/lang/Object;
.source "MessageRecipientInfo.java"


# static fields
.field public static final BYTES_CONTACT_IDENTITY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final ENGINE_MESSAGE_IDENTIFIER:Ljava/lang/String; = "engine_message_identifier"

.field public static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final RECIPIENT_STATUS_DELIVERED:I = 0x2

.field public static final RECIPIENT_STATUS_DELIVERED_AND_READ:I = 0x3

.field public static final RECIPIENT_STATUS_PROCESSING:I = 0x0

.field public static final RECIPIENT_STATUS_SENT:I = 0x1

.field public static final RETURN_RECEIPT_KEY:Ljava/lang/String; = "return_receipt_key"

.field public static final RETURN_RECEIPT_NONCE:Ljava/lang/String; = "return_receipt_nonce"

.field public static final TABLE_NAME:Ljava/lang/String; = "message_recipient_info_table"

.field public static final TIMESTAMP_DELIVERED:Ljava/lang/String; = "timestamp_delivered"

.field public static final TIMESTAMP_READ:Ljava/lang/String; = "timestamp_read"

.field public static final TIMESTAMP_SENT:Ljava/lang/String; = "timestamp_sent"


# instance fields
.field public bytesContactIdentity:[B

.field public engineMessageIdentifier:[B

.field public messageId:J

.field public returnReceiptKey:[B

.field public returnReceiptNonce:[B

.field public timestampDelivered:Ljava/lang/Long;

.field public timestampRead:Ljava/lang/Long;

.field public timestampSent:Ljava/lang/Long;


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    .line 98
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 100
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    .line 101
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    .line 102
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 103
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    .line 104
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(J[B[B[B[B)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    .line 86
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    .line 87
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 88
    iput-object p5, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    .line 89
    iput-object p6, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 91
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    .line 92
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(J[B[B[B[BLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->messageId:J

    .line 74
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->bytesContactIdentity:[B

    .line 75
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptNonce:[B

    .line 76
    iput-object p5, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->returnReceiptKey:[B

    .line 77
    iput-object p6, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->engineMessageIdentifier:[B

    .line 78
    iput-object p7, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    .line 79
    iput-object p8, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    .line 80
    iput-object p9, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public status()I
    .locals 4

    .line 108
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampSent:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampDelivered:Ljava/lang/Long;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lio/olvid/messenger/databases/entity/MessageRecipientInfo;->timestampRead:Ljava/lang/Long;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method
