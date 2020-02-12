.class public Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;
.super Ljava/lang/Object;
.source "NetworkReceivedMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;
    }
.end annotation


# instance fields
.field private final encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final header:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final serverTimestamp:J


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;JLio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 16
    iput-wide p2, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->serverTimestamp:J

    .line 17
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 18
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->header:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

    return-void
.end method


# virtual methods
.method public getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public getHeader()Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->header:Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage$Header;

    return-object v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;->serverTimestamp:J

    return-wide v0
.end method
