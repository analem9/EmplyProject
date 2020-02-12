.class final Lio/olvid/engine/channel/databases/ObliviousChannel$1;
.super Ljava/lang/Object;
.source "ObliviousChannel.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/engine/channel/databases/ObliviousChannel;->deleteMany(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

.field final synthetic val$currentDeviceUid:Lio/olvid/engine/datatypes/UID;

.field final synthetic val$remoteIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/channel/datatypes/ChannelManagerSession;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel$1;->val$currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    iput-object p2, p0, Lio/olvid/engine/channel/databases/ObliviousChannel$1;->val$remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    iput-object p3, p0, Lio/olvid/engine/channel/databases/ObliviousChannel$1;->val$channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public insert()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public wasCommitted()V
    .locals 3

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 516
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel$1;->val$currentDeviceUid:Lio/olvid/engine/datatypes/UID;

    const-string v2, "current_device_uid_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel$1;->val$remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    const-string v2, "remote_identity_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Lio/olvid/engine/channel/databases/ObliviousChannel$1;->val$channelManagerSession:Lio/olvid/engine/channel/datatypes/ChannelManagerSession;

    iget-object v1, v1, Lio/olvid/engine/channel/datatypes/ChannelManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v2, "channel_notification_channel_deleted"

    invoke-interface {v1, v2, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
