.class public interface abstract Lio/olvid/engine/networkfetch/databases/InboxAttachment$InboxAttachmentListener;
.super Ljava/lang/Object;
.source "InboxAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/databases/InboxAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InboxAttachmentListener"
.end annotation


# virtual methods
.method public abstract attachmentDownloadFinished(Lio/olvid/engine/datatypes/UID;I)V
.end method

.method public abstract attachmentDownloadProgressed(Lio/olvid/engine/datatypes/UID;IF)V
.end method

.method public abstract attachmentDownloadWasRequested(Lio/olvid/engine/datatypes/UID;IIJ)V
.end method
