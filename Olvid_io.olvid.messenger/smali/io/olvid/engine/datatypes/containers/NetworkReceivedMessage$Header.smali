.class public Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;
.super Ljava/lang/Object;
.source "NetworkReceivedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/EncryptedBytes;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 43
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-void
.end method


# virtual methods
.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getWrappedKey()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method
