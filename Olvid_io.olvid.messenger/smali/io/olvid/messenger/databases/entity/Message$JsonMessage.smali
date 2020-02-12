.class public Lio/olvid/messenger/databases/entity/Message$JsonMessage;
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
    name = "JsonMessage"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field groupOwner:[B

.field groupUid:[B

.field jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

.field senderSequenceNumber:J

.field senderThreadIdentifier:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 663
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupOwner()[B
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "go"
    .end annotation

    .line 702
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->groupOwner:[B

    return-object v0
.end method

.method public getGroupUid()[B
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guid"
    .end annotation

    .line 692
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->groupUid:[B

    return-object v0
.end method

.method public getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "re"
    .end annotation

    .line 712
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    return-object v0
.end method

.method public getSenderSequenceNumber()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ssn"
    .end annotation

    .line 672
    iget-wide v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->senderSequenceNumber:J

    return-wide v0
.end method

.method public getSenderThreadIdentifier()Ljava/util/UUID;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sti"
    .end annotation

    .line 682
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->senderThreadIdentifier:Ljava/util/UUID;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 721
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->body:Ljava/lang/String;

    return-void
.end method

.method public setGroupOwner([B)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "go"
    .end annotation

    .line 707
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->groupOwner:[B

    return-void
.end method

.method public setGroupOwnerAndUid([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 725
    array-length v0, p1

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 728
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 729
    array-length v2, p1

    sub-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 730
    invoke-virtual {p0, v0}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->setGroupOwner([B)V

    .line 731
    invoke-virtual {p0, p1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->setGroupUid([B)V

    return-void

    .line 726
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setGroupUid([B)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guid"
    .end annotation

    .line 697
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->groupUid:[B

    return-void
.end method

.method public setJsonReply(Lio/olvid/messenger/databases/entity/Message$JsonReply;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "re"
    .end annotation

    .line 717
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->jsonReply:Lio/olvid/messenger/databases/entity/Message$JsonReply;

    return-void
.end method

.method public setSenderSequenceNumber(J)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ssn"
    .end annotation

    .line 677
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->senderSequenceNumber:J

    return-void
.end method

.method public setSenderThreadIdentifier(Ljava/util/UUID;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sti"
    .end annotation

    .line 687
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->senderThreadIdentifier:Ljava/util/UUID;

    return-void
.end method
