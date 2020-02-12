.class public Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;
.super Ljava/lang/Object;
.source "DecryptedApplicationMessage.java"


# instance fields
.field private final fromIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final messagePayload:[B

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final serverTimestamp:J

.field private final toIdentity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 15
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->messagePayload:[B

    .line 16
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 17
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 18
    iput-wide p5, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->serverTimestamp:J

    return-void
.end method


# virtual methods
.method public getFromIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->fromIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getMessagePayload()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->messagePayload:[B

    return-object v0
.end method

.method public getMessageUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->messageUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->serverTimestamp:J

    return-wide v0
.end method

.method public getToIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/DecryptedApplicationMessage;->toIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method
