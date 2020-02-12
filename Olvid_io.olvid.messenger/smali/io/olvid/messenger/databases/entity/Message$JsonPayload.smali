.class public Lio/olvid/messenger/databases/entity/Message$JsonPayload;
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
    name = "JsonPayload"
.end annotation


# instance fields
.field jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

.field jsonReturnReceipt:Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/olvid/messenger/databases/entity/Message$JsonMessage;Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;)V
    .locals 0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    .line 620
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->jsonReturnReceipt:Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    return-void
.end method


# virtual methods
.method public getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .line 627
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    return-object v0
.end method

.method public getJsonReturnReceipt()Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rr"
    .end annotation

    .line 637
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->jsonReturnReceipt:Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    return-object v0
.end method

.method public setJsonMessage(Lio/olvid/messenger/databases/entity/Message$JsonMessage;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .line 632
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->jsonMessage:Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    return-void
.end method

.method public setJsonReturnReceipt(Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rr"
    .end annotation

    .line 642
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonPayload;->jsonReturnReceipt:Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;

    return-void
.end method
