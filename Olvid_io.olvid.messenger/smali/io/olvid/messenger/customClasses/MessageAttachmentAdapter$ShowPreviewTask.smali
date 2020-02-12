.class Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;
.super Ljava/lang/Object;
.source "MessageAttachmentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowPreviewTask"
.end annotation


# static fields
.field static final runningPreviews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;",
            "Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field private final holderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile interrupt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 514
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;)V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 522
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->holderWeakReference:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 523
    iput-boolean p1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->interrupt:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 528
    sget-object v0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    monitor-enter v0

    .line 529
    :try_start_0
    sget-object v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;

    if-nez v1, :cond_0

    .line 531
    sget-object v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 533
    :cond_0
    iget-object v2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v2, v2, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 534
    iput-boolean v2, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->interrupt:Z

    .line 535
    sget-object v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    iget-object v2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 541
    iget-object v0, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v1, v1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    invoke-static {v0, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter;->access$300(Lio/olvid/messenger/databases/entity/Fyle;Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 542
    sget-object v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    monitor-enter v1

    .line 543
    :try_start_1
    sget-object v2, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    iget-object v3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;

    .line 544
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    sget-object v2, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->runningPreviews:Ljava/util/Map;

    iget-object v3, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    iget-object v1, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->holderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;

    .line 549
    iget-boolean v2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->interrupt:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v3, v1, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;->fyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-virtual {v2, v3}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 553
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask$1;

    invoke-direct {v2, p0, v1}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask$1;-><init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 560
    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask$2;

    invoke-direct {v3, p0, v1, v0}, Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask$2;-><init>(Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$ShowPreviewTask;Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentViewHolder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 547
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 537
    :cond_5
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 540
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
