.class Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;
.super Lio/olvid/engine/datatypes/ServerMethod;
.source "DeleteMessageAndAttachmentFromServerAndLocalInboxesOperation.java"


# static fields
.field private static final SERVER_METHOD_PATH:Ljava/lang/String; = "/deleteMessageAndAttachments"


# instance fields
.field private final deviceUid:Lio/olvid/engine/datatypes/UID;

.field private final identity:Lio/olvid/engine/datatypes/Identity;

.field private final messageUid:Lio/olvid/engine/datatypes/UID;

.field private final server:Ljava/lang/String;

.field private final token:[B


# direct methods
.method constructor <init>(Lio/olvid/engine/datatypes/Identity;[BLio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lio/olvid/engine/datatypes/ServerMethod;-><init>()V

    .line 140
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->server:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 142
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->token:[B

    .line 143
    iput-object p3, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 144
    iput-object p4, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method


# virtual methods
.method protected getDataToSend()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 159
    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 160
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->token:[B

    .line 161
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 162
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 163
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/UID;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 159
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected getServer()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/olvid/engine/networkfetch/operations/DeleteMessageAndAttachmentServerMethod;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected getServerMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "/deleteMessageAndAttachments"

    return-object v0
.end method

.method protected parseReceivedData([Lio/olvid/engine/encoder/Encoded;)V
    .locals 0

    return-void
.end method
