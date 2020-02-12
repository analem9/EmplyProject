.class public Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;
.source "DownloadIdentityPhotoChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerGetPhotoMessage"
.end annotation


# instance fields
.field private final encryptedPhoto:Lio/olvid/engine/datatypes/EncryptedBytes;


# direct methods
.method public constructor <init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    new-instance v0, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;

    invoke-direct {v0, p1}, Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;-><init>(Lio/olvid/engine/protocol/databases/ReceivedMessage;)V

    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    .line 178
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lio/olvid/engine/protocol/databases/ReceivedMessage;->getEncodedResponse()Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeEncryptedData()Lio/olvid/engine/datatypes/EncryptedBytes;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;->encryptedPhoto:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;->encryptedPhoto:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method

.method synthetic constructor <init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;-><init>(Lio/olvid/engine/protocol/datatypes/CoreProtocolMessage;)V

    return-void
.end method

.method static synthetic access$400(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;)Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 0

    .line 168
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$ServerGetPhotoMessage;->encryptedPhoto:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object p0
.end method


# virtual methods
.method public getInputs()[Lio/olvid/engine/encoder/Encoded;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    return-object v0
.end method

.method public getProtocolMessageId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
