.class public Lio/olvid/engine/datatypes/containers/SendChannelInfo;
.super Ljava/lang/Object;
.source "SendChannelInfo.java"


# static fields
.field public static final ALL_CONFIRMED_OBLIVIOUS_CHANNELS_ON_SAME_SERVER_TYPE:I = 0x3

.field public static final ALL_OWNED_CONFIRMED_OBLIVIOUS_CHANNELS_TYPE:I = 0x7

.field public static final ASYMMETRIC_BROADCAST_CHANNEL_TYPE:I = 0x4

.field public static final ASYMMETRIC_CHANNEL_TYPE:I = 0x2

.field public static final LOCAL_TYPE:I = 0x0

.field public static final OBLIVIOUS_CHANNEL_TYPE:I = 0x1

.field public static final SERVER_QUERY_TYPE:I = 0x6

.field public static final USER_INTERFACE_TYPE:I = 0x5


# instance fields
.field private final channelType:I

.field private final dialogType:Lio/olvid/engine/datatypes/containers/DialogType;

.field private final dialogUuid:Ljava/util/UUID;

.field private final fromIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final necessarilyConfirmed:Ljava/lang/Boolean;

.field private final remoteDeviceUids:[Lio/olvid/engine/datatypes/UID;

.field private final serverQueryType:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

.field private final toIdentities:[Lio/olvid/engine/datatypes/Identity;

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method private constructor <init>(ILio/olvid/engine/datatypes/Identity;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 36
    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-void
.end method

.method private constructor <init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->channelType:I

    .line 41
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 42
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 43
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->remoteDeviceUids:[Lio/olvid/engine/datatypes/UID;

    .line 44
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->necessarilyConfirmed:Ljava/lang/Boolean;

    .line 45
    iput-object p6, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->dialogType:Lio/olvid/engine/datatypes/containers/DialogType;

    .line 46
    iput-object p7, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->dialogUuid:Ljava/util/UUID;

    .line 47
    iput-object p8, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->serverQueryType:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    .line 48
    iput-object p9, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->toIdentities:[Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method public static createAllConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 11

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v10, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v9, v0, [Lio/olvid/engine/datatypes/Identity;

    const/4 v0, 0x0

    aput-object p0, v9, v0

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-object v10

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createAllConfirmedObliviousChannelsInfosForMultipleIdentities([Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 81
    array-length v2, v0

    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 84
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 85
    array-length v3, v0

    const/4 v13, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 86
    invoke-virtual {v5}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_1

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    .line 96
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 98
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 99
    new-instance v16, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v6, v13, [Lio/olvid/engine/datatypes/Identity;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [Lio/olvid/engine/datatypes/Identity;

    move-object/from16 v3, v16

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v12}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    aput-object v16, v0, v15

    goto :goto_2

    .line 101
    :cond_3
    aput-object v1, v0, v15

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public static createAllOwnedConfirmedObliviousChannelsInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    new-instance v10, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-object v10
.end method

.method public static createAsymmetricBroadcastChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method

.method public static createAsymmetricChannelInfo(Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 11

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v10, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-object v10

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createLocalChannelInfo(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;)V

    return-object v0
.end method

.method public static createObliviousChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 11

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v10, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-object v10

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createServerQueryChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 11

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v10, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-object v10

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createUserInterfaceChannelInfo(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;)Lio/olvid/engine/datatypes/containers/SendChannelInfo;
    .locals 11

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v10, Lio/olvid/engine/datatypes/containers/SendChannelInfo;

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lio/olvid/engine/datatypes/containers/SendChannelInfo;-><init>(ILio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/UID;Ljava/lang/Boolean;Lio/olvid/engine/datatypes/containers/DialogType;Ljava/util/UUID;Lio/olvid/engine/datatypes/containers/ServerQuery$Type;[Lio/olvid/engine/datatypes/Identity;)V

    return-object v10

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChannelType()I
    .locals 1

    .line 137
    iget v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->channelType:I

    return v0
.end method

.method public getDialogType()Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->dialogType:Lio/olvid/engine/datatypes/containers/DialogType;

    return-object v0
.end method

.method public getDialogUuid()Ljava/util/UUID;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->dialogUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getFromIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getNecessarilyConfirmed()Ljava/lang/Boolean;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->necessarilyConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRemoteDeviceUids()[Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->remoteDeviceUids:[Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getServerQueryType()Lio/olvid/engine/datatypes/containers/ServerQuery$Type;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->serverQueryType:Lio/olvid/engine/datatypes/containers/ServerQuery$Type;

    return-object v0
.end method

.method public getToIdentities()[Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->toIdentities:[Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/SendChannelInfo;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
