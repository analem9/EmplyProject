.class public Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "DownloadIdentityPhotoChildProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadingPhotoState"
.end annotation


# instance fields
.field private final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 81
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 82
    iput-object p2, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 71
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 72
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 75
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 76
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method static synthetic access$300(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;)Lio/olvid/engine/datatypes/Identity;
    .locals 0

    .line 65
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 87
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 88
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/DownloadIdentityPhotoChildProtocol$DownloadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
