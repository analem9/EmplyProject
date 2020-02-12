.class public interface abstract Lio/olvid/engine/networkfetch/databases/InboxMessage$InboxMessageListener;
.super Ljava/lang/Object;
.source "InboxMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/databases/InboxMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InboxMessageListener"
.end annotation


# virtual methods
.method public abstract messageDecrypted(Lio/olvid/engine/datatypes/UID;)V
.end method

.method public abstract messageWasDownloaded(Lio/olvid/engine/datatypes/containers/NetworkReceivedMessage;)V
.end method
