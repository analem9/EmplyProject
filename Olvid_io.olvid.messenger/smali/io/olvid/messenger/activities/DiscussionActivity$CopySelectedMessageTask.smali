.class Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;
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
    name = "CopySelectedMessageTask"
.end annotation


# instance fields
.field private final activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedMessageId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Long;)V
    .locals 1

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2766
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 2767
    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;->selectedMessageId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2772
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 2773
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;->selectedMessageId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2776
    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2777
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10011e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 2778
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 2780
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;

    invoke-direct {v2, p0, v1, v0}, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;Landroidx/appcompat/app/AppCompatActivity;Landroid/content/ClipData;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
