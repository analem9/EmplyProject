.class public Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "DownloadIdentityPhotoChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;,
        Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;,
        Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;,
        Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$PhotoDownloadedState;,
        Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;
    }
.end annotation


# static fields
.field public static final DOWNLOADING_PHOTO_STATE_ID:I = 0x1

.field public static final INITIAL_MESSAGE_ID:I = 0x0

.field public static final PHOTO_DOWNLOADED_STATE_ID:I = 0x2

.field public static final SERVER_GET_PHOTO_MESSAGE_ID:I = 0x1


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0
.end method

.method protected getMessageClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;

    return-object p1

    .line 127
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;

    return-object p1
.end method

.method protected getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    new-array p1, v0, [Ljava/lang/Class;

    return-object p1

    :cond_0
    new-array p1, v1, [Ljava/lang/Class;

    .line 210
    const-class v1, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ProcessPhotoStep;

    aput-object v1, p1, v0

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Class;

    .line 208
    const-class v1, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$QueryServerStep;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public getProtocolId()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getStateClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$PhotoDownloadedState;

    return-object p1

    .line 57
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;

    return-object p1

    .line 55
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
