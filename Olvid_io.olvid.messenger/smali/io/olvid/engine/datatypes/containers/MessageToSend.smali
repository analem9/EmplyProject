.class public Lio/olvid/engine/datatypes/containers/MessageToSend;
.super Ljava/lang/Object;
.source "MessageToSend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;,
        Lio/olvid/engine/datatypes/containers/MessageToSend$Header;
    }
.end annotation


# instance fields
.field private final attachments:[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

.field private final encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

.field private final headers:[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

.field private final isApplicationMessageWithUserContent:Z

.field private final server:Ljava/lang/String;

.field private final uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;)V
    .locals 8

    const/4 v0, 0x0

    new-array v6, v0, [Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 18
    invoke-direct/range {v1 .. v7}, Lio/olvid/engine/datatypes/containers/MessageToSend;-><init>(Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;Z)V

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Ljava/lang/String;Lio/olvid/engine/datatypes/EncryptedBytes;[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->uid:Lio/olvid/engine/datatypes/UID;

    .line 23
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->server:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 25
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->headers:[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    .line 26
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->attachments:[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    .line 27
    iput-boolean p6, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->isApplicationMessageWithUserContent:Z

    return-void
.end method


# virtual methods
.method public getAttachments()[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->attachments:[Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;

    return-object v0
.end method

.method public getEncryptedContent()Lio/olvid/engine/datatypes/EncryptedBytes;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->encryptedContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    return-object v0
.end method

.method public getHeaders()[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->headers:[Lio/olvid/engine/datatypes/containers/MessageToSend$Header;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public isApplicationMessageWithUserContent()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend;->isApplicationMessageWithUserContent:Z

    return v0
.end method
