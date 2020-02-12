.class public abstract Lio/olvid/engine/channel/datatypes/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field protected obliviousEngineVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;->getSendChannelInfo()Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->getChannelType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :pswitch_0
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/datatypes/ServerQueryChannel;->post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_1
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/datatypes/UserInterfaceChannel;->post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_2
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/datatypes/NetworkChannel;->post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_3
    invoke-static {p0, p1, p2}, Lio/olvid/engine/channel/datatypes/LocalChannel;->post(Lio/olvid/engine/channel/datatypes/ChannelManagerSession;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getObliviousEngineVersion()I
    .locals 1

    .line 47
    iget v0, p0, Lio/olvid/engine/channel/datatypes/Channel;->obliviousEngineVersion:I

    return v0
.end method
