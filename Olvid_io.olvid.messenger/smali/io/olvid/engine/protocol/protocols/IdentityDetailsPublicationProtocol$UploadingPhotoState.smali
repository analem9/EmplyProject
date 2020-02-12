.class public Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;
.super Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;
.source "IdentityDetailsPublicationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadingPhotoState"
.end annotation


# instance fields
.field private final jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/olvid/engine/encoder/Encoded;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 79
    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    .line 80
    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 83
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, v0}, Lio/olvid/engine/protocol/protocol_engine/ConcreteProtocolState;-><init>(I)V

    .line 88
    iput-object p1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 93
    iget-object v1, p0, Lio/olvid/engine/protocol/protocols/IdentityDetailsPublicationProtocol$UploadingPhotoState;->jsonIdentityDetailsWithVersionAndPhoto:Ljava/lang/String;

    .line 94
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 93
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
