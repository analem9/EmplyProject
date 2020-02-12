.class public Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;
.super Ljava/lang/Object;
.source "AuthEncKeyAndChannelInfo.java"


# instance fields
.field private final authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private final receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 13
    iput-object p2, p0, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-void
.end method


# virtual methods
.method public getAuthEncKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->authEncKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getReceptionChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/olvid/engine/channel/datatypes/AuthEncKeyAndChannelInfo;->receptionChannelInfo:Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    return-object v0
.end method
