.class public Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;
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
    name = "JsonReturnReceipt"
.end annotation


# instance fields
.field key:[B

.field nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->nonce:[B

    .line 791
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->key:[B

    return-void
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    .line 803
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->key:[B

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .line 795
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->nonce:[B

    return-object v0
.end method

.method public setKey([B)V
    .locals 0

    .line 807
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->key:[B

    return-void
.end method

.method public setNonce([B)V
    .locals 0

    .line 799
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Message$JsonReturnReceipt;->nonce:[B

    return-void
.end method
