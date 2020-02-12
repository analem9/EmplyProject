.class public Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "DownloadIdentityPhotoChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialMessage"
.end annotation


# instance fields
.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 147
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 151
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getInputs()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 141
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 142
    iput-object p3, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 135
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 161
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 162
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$InitialMessage;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    .line 163
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
