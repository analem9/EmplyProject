.class public Lio/olvid/engine/datatypes/containers/MessageToSend$Header;
.super Ljava/lang/Object;
.source "MessageToSend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/containers/MessageToSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final wrappedMessageKey:Lio/olvid/engine/datatypes/EncryptedBytes;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 62
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 63
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->wrappedMessageKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method


# virtual methods
.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getWrappedMessageKey()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Header;->wrappedMessageKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method
