.class public Lio/olvid/engine/networksend/datatypes/SendManagerSession;
.super Ljava/lang/Object;
.source "SendManagerSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final newOutboxMessageListener:Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;

.field public final newReturnReceiptListener:Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;

.field public final notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field public final outboxAttachmentCanBeSentListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;

.field public final outboxAttachmentCancelRequestedListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;

.field public final session:Lio/olvid/engine/datatypes/Session;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;Lio/olvid/engine/metamanager/NotificationPostingDelegate;Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 27
    iput-object p2, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->newOutboxMessageListener:Lio/olvid/engine/networksend/databases/OutboxMessage$NewOutboxMessageListener;

    .line 28
    iput-object p3, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->outboxAttachmentCanBeSentListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCanBeSentListener;

    .line 29
    iput-object p4, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->outboxAttachmentCancelRequestedListener:Lio/olvid/engine/networksend/databases/OutboxAttachment$OutboxAttachmentCancelRequestedListener;

    .line 30
    iput-object p5, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    .line 31
    iput-object p6, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->newReturnReceiptListener:Lio/olvid/engine/networksend/databases/ReturnReceipt$NewReturnReceiptListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lio/olvid/engine/networksend/datatypes/SendManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->close()V

    return-void
.end method
