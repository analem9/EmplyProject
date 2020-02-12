.class Lio/olvid/messenger/activities/DiscussionActivity$MarkMessagesReadTask;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/DiscussionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarkMessagesReadTask"
.end annotation


# instance fields
.field private final messageIds:[Ljava/lang/Long;


# direct methods
.method constructor <init>([Ljava/lang/Long;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2635
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MarkMessagesReadTask;->messageIds:[Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2640
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 2641
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MarkMessagesReadTask;->messageIds:[Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/MessageDao;->markMessagesRead([Ljava/lang/Long;)V

    return-void
.end method
