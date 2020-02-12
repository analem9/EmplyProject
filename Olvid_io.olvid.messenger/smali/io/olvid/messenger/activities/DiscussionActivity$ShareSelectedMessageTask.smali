.class Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;
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
    name = "ShareSelectedMessageTask"
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

    .line 2713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2714
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 2715
    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;->selectedMessageId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2720
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 2721
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->messageDao()Lio/olvid/messenger/databases/dao/MessageDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;->selectedMessageId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/MessageDao;->get(J)Lio/olvid/messenger/databases/entity/Message;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2724
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 2726
    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget v4, v1, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    if-gtz v4, :cond_2

    :cond_0
    iget v4, v1, Lio/olvid/messenger/databases/entity/Message;->totalAttachmentCount:I

    if-le v4, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 2727
    :cond_2
    :goto_0
    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2728
    iget-object v3, v1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 2731
    :cond_3
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message;->hasAttachments()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2732
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    iget-wide v7, v1, Lio/olvid/messenger/databases/entity/Message;->id:J

    invoke-interface {v0, v7, v8}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->getFylesAndStatusForMessageSync(J)Ljava/util/List;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    if-eqz v6, :cond_5

    .line 2734
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2735
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 2736
    invoke-virtual {v5}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    iget-object v5, v5, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/olvid/messenger/activities/DiscussionActivity;->access$6400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2739
    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2

    .line 2741
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 2742
    invoke-virtual {v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2743
    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    :cond_6
    :goto_2
    if-eqz v6, :cond_7

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 2747
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string v0, "android.intent.action.SEND"

    .line 2749
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2751
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2752
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_8

    const v1, 0x7f1001e7

    .line 2754
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method
