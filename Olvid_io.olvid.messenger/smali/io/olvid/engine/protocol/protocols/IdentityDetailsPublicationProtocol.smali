.class public Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;
.source "IdentityDetailsPublicationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsReceivedState;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsSentState;,
        Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;
    }
.end annotation


# static fields
.field public static final DETAILS_RECEIVED_STATE_ID:I = 0x3

.field public static final DETAILS_SENT_STATE_ID:I = 0x2

.field public static final INITIAL_MESSAGE_ID:I = 0x0

.field public static final SEND_DETAILS_MESSAGE_ID:I = 0x2

.field public static final SERVER_PUT_PHOTO_MESSAGE_ID:I = 0x1

.field public static final UPLOADING_PHOTO_STATE_ID:I = 0x1


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct/range {p0 .. p7}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocol;-><init>(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/UID;ILio/olvid/engine/encoder/Encoded;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method


# virtual methods
.method public getFinalStateIds()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsMessage;

    return-object p1

    .line 156
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ServerPutPhotoMessage;

    return-object p1

    .line 154
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$InitialMessage;

    return-object p1
.end method

.method protected getPossibleStepClasses(I)[Ljava/lang/Class;
    .locals 3
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

    .line 261
    const-class v1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$SendDetailsStep;

    aput-object v1, p1, v0

    return-object p1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Class;

    .line 259
    const-class v2, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$StartPhotoUploadStep;

    aput-object v2, p1, v0

    const-class v0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$ReceiveDetailsStep;

    aput-object v0, p1, v1

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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_0
    const-class p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsReceivedState;

    return-object p1

    .line 66
    :cond_1
    const-class p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$DetailsSentState;

    return-object p1

    .line 64
    :cond_2
    const-class p1, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;

    return-object p1

    .line 62
    :cond_3
    const-class p1, Lio/olvid/engine/protocol/protocol_engine/InitialProtocolState;

    return-object p1
.end method
