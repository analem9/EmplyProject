.class public Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;
.super Ljava/lang/Object;
.source "MessageToSend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/containers/MessageToSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attachment"
.end annotation


# instance fields
.field private final attachmentLength:J

.field private final deleteAfterSend:Z

.field private final key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJLio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->url:Ljava/lang/String;

    .line 87
    iput-boolean p2, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->deleteAfterSend:Z

    .line 88
    iput-wide p3, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->attachmentLength:J

    .line 89
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method


# virtual methods
.method public getAttachmentLength()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->attachmentLength:J

    return-wide v0
.end method

.method public getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteAfterSend()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/containers/MessageToSend$Attachment;->deleteAfterSend:Z

    return v0
.end method
