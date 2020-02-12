.class Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;
.super Ljava/lang/Object;
.source "DownloadMessagesAndListAttachmentsOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageAndAttachmentLengths"
.end annotation


# instance fields
.field final attachmentLengths:[J

.field final chunkDownloadPrivateUrls:[[Ljava/lang/String;

.field final chunkLengths:[I

.field final messageContent:Lio/olvid/engine/datatypes/EncryptedBytes;

.field final messageUid:Lio/olvid/engine/datatypes/UID;

.field final serverTimestamp:J

.field final synthetic this$0:Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;

.field final wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;


# direct methods
.method constructor <init>(Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;Lio/olvid/engine/datatypes/UID;JLio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/EncryptedBytes;I)V
    .locals 0

    .line 249
    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->this$0:Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageUid:Lio/olvid/engine/datatypes/UID;

    .line 251
    iput-wide p3, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->serverTimestamp:J

    .line 252
    iput-object p5, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->wrappedKey:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 253
    iput-object p6, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->messageContent:Lio/olvid/engine/datatypes/EncryptedBytes;

    .line 254
    new-array p1, p7, [J

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->attachmentLengths:[J

    .line 255
    new-array p1, p7, [I

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkLengths:[I

    .line 256
    new-array p1, p7, [[Ljava/lang/String;

    iput-object p1, p0, Lio/olvid/engine/networkfetch/operations/DownloadMessagesAndListAttachmentsServerMethod$MessageAndAttachmentLengths;->chunkDownloadPrivateUrls:[[Ljava/lang/String;

    return-void
.end method
