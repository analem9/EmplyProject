.class public Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
.super Ljava/lang/Object;
.source "ReceptionChannelInfo.java"


# static fields
.field public static final ANY_CONFIRMED_OBLIVIOUS_CHANNEL_TYPE:I = 0x4

.field public static final ANY_CONFIRMED_OBLIVIOUS_CHANNEL_WITH_OWNED_DEVICE_TYPE:I = 0x3

.field public static final ASYMMETRIC_CHANNEL_TYPE:I = 0x2

.field public static final LOCAL_TYPE:I = 0x0

.field public static final OBLIVIOUS_CHANNEL_TYPE:I = 0x1


# instance fields
.field private final channelType:I

.field private final confirmed:Ljava/lang/Boolean;

.field private final remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

.field private final remoteIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0, v0}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;-><init>(ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->channelType:I

    .line 27
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 28
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 29
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->confirmed:Ljava/lang/Boolean;

    return-void
.end method

.method public static createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 2

    .line 49
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;-><init>(I)V

    return-object v0
.end method

.method public static createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 2

    .line 45
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;-><init>(I)V

    return-object v0
.end method

.method public static createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 2

    .line 37
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;-><init>(I)V

    return-object v0
.end method

.method public static createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 2

    .line 41
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;-><init>(I)V

    return-object v0
.end method

.method public static createObliviousChannelInfo(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 2

    .line 33
    new-instance v0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;-><init>(ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/encoder/DecodingException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 54
    array-length v0, p0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 57
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x1

    if-eqz v1, :cond_8

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v0, :cond_6

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 80
    array-length p0, p0

    if-ne p0, v0, :cond_0

    .line 83
    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 85
    :cond_1
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    const-string v0, "Unknown reception channel type"

    invoke-direct {p0, v0}, Lio/olvid/engine/encoder/DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_2
    array-length p0, p0

    if-ne p0, v0, :cond_3

    .line 78
    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAnyConfirmedObliviousChannelWithOwnedDeviceInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p0

    return-object p0

    .line 76
    :cond_3
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 70
    :cond_4
    array-length p0, p0

    if-ne p0, v0, :cond_5

    .line 73
    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createAsymmetricChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p0

    return-object p0

    .line 71
    :cond_5
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 65
    :cond_6
    array-length v1, p0

    if-ne v1, v2, :cond_7

    .line 68
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    aget-object v1, p0, v4

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeBoolean()Z

    move-result p0

    invoke-static {v0, v1, p0}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createObliviousChannelInfo(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Z)Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p0

    return-object p0

    .line 66
    :cond_7
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 60
    :cond_8
    array-length p0, p0

    if-ne p0, v0, :cond_9

    .line 63
    invoke-static {}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->createLocalChannelInfo()Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    move-result-object p0

    return-object p0

    .line 61
    :cond_9
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0

    .line 55
    :cond_a
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 6

    .line 90
    iget v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->channelType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-array v2, v2, [Lio/olvid/engine/encoder/Encoded;

    int-to-long v3, v0

    .line 99
    invoke-static {v3, v4}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Lio/olvid/engine/encoder/Encoded;

    int-to-long v4, v0

    .line 93
    invoke-static {v4, v5}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    .line 94
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x2

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 95
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->confirmed:Ljava/lang/Boolean;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Z)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v3, v0

    .line 92
    invoke-static {v3}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 121
    instance-of v0, p1, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    check-cast p1, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;

    .line 125
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result v0

    invoke-virtual {p0}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 128
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->getChannelType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    return v2

    .line 130
    :cond_2
    iget-object v0, p1, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    iget-object v3, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v3}, Lio/olvid/engine/datatypes/UID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    iget-object v3, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v3}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->confirmed:Ljava/lang/Boolean;

    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->confirmed:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getChannelType()I
    .locals 1

    .line 104
    iget v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->channelType:I

    return v0
.end method

.method public getConfirmed()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->confirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRemoteDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteDeviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getRemoteIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/ReceptionChannelInfo;->remoteIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
