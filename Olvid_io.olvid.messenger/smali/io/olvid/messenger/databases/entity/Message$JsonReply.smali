.class public Lio/olvid/messenger/databases/entity/Message$JsonReply;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/entity/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonReply"
.end annotation


# instance fields
.field senderIdentifier:[B

.field senderSequenceNumber:J

.field senderThreadIdentifier:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Lio/olvid/messenger/databases/entity/Message;)Lio/olvid/messenger/databases/entity/Message$JsonReply;
    .locals 3

    .line 744
    new-instance v0, Lio/olvid/messenger/databases/entity/Message$JsonReply;

    invoke-direct {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;-><init>()V

    .line 745
    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Message;->senderSequenceNumber:J

    iput-wide v1, v0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderSequenceNumber:J

    .line 746
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Message;->senderThreadIdentifier:Ljava/util/UUID;

    iput-object v1, v0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderThreadIdentifier:Ljava/util/UUID;

    .line 747
    iget-object p0, p0, Lio/olvid/messenger/databases/entity/Message;->senderIdentifier:[B

    iput-object p0, v0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderIdentifier:[B

    return-object v0
.end method


# virtual methods
.method public getSenderIdentifier()[B
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "si"
    .end annotation

    .line 773
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderIdentifier:[B

    return-object v0
.end method

.method public getSenderSequenceNumber()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ssn"
    .end annotation

    .line 753
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderSequenceNumber:J

    return-wide v0
.end method

.method public getSenderThreadIdentifier()Ljava/util/UUID;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sti"
    .end annotation

    .line 763
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderThreadIdentifier:Ljava/util/UUID;

    return-object v0
.end method

.method public setSenderIdentifier([B)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "si"
    .end annotation

    .line 778
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderIdentifier:[B

    return-void
.end method

.method public setSenderSequenceNumber(J)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ssn"
    .end annotation

    .line 758
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderSequenceNumber:J

    return-void
.end method

.method public setSenderThreadIdentifier(Ljava/util/UUID;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sti"
    .end annotation

    .line 768
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonReply;->senderThreadIdentifier:Ljava/util/UUID;

    return-void
.end method
