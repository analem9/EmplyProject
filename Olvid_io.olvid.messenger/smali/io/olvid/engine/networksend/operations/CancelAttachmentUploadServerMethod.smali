.class Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "CancelAttachmentUploadOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/cancelAttachmentUpload"


# instance fields
.field private final attachmentNumber:I

.field private final server:Ljava/lang/String;

.field private final uidFromServer:Lio/olvid/engine/datatypes/UID;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;I)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    .line 111
    iput-object p1, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->server:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    .line 113
    iput p3, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->attachmentNumber:I

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 128
    iget-object v1, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->uidFromServer:Lio/olvid/engine/datatypes/UID;

    .line 129
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->attachmentNumber:I

    int-to-long v1, v1

    .line 130
    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 128
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/olvid/engine/networksend/operations/CancelAttachmentUploadServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/cancelAttachmentUpload"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    return-void
.end method
