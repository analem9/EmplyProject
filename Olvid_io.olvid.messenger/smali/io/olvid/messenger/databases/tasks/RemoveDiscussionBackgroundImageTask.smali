.class public Lio/olvid/messenger/databases/tasks/RemoveDiscussionBackgroundImageTask;
.super Ljava/lang/Object;
.source "RemoveDiscussionBackgroundImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final discussionId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lio/olvid/messenger/databases/tasks/RemoveDiscussionBackgroundImageTask;->discussionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 23
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/databases/tasks/RemoveDiscussionBackgroundImageTask;->discussionId:J

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->get(J)Lio/olvid/messenger/databases/entity/DiscussionCustomization;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    const/4 v3, 0x0

    .line 31
    iput-object v3, v1, Lio/olvid/messenger/databases/entity/DiscussionCustomization;->backgroundImageUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionCustomizationDao()Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionCustomizationDao;->update(Lio/olvid/messenger/databases/entity/DiscussionCustomization;)V

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method
