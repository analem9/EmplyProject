.class public Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;
.super Ljava/lang/Object;
.source "UpdateDiscussionTitleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final discussionId:J

.field private final newName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->newName:Ljava/lang/String;

    .line 18
    iput-wide p1, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->discussionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 23
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-wide v2, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->discussionId:J

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getById(J)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v5, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    invoke-interface {v2, v4, v5}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 33
    iget-object v4, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v4}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 36
    iget-object v4, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->newName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v2, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->newName:Ljava/lang/String;

    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    .line 41
    :goto_1
    iget-object v3, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/olvid/messenger/AppSingleton;->updateCachedCustomDisplayName([BLjava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    .line 45
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    return-void

    .line 49
    :cond_3
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v2, :cond_6

    .line 51
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v2

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesOwnedIdentity:[B

    iget-object v5, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-interface {v2, v4, v5}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 53
    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    invoke-static {v4}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 56
    iget-object v4, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->newName:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v5, v2, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 59
    :cond_4
    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->newName:Ljava/lang/String;

    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    goto :goto_3

    .line 57
    :cond_5
    :goto_2
    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Group;->customName:Ljava/lang/String;

    .line 61
    :goto_3
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/olvid/messenger/databases/dao/GroupDao;->update(Lio/olvid/messenger/databases/entity/Group;)V

    .line 64
    invoke-virtual {v2}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    goto :goto_4

    .line 68
    :cond_6
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateDiscussionTitleTask;->newName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 70
    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 75
    :cond_7
    :goto_4
    invoke-static {v1}, Lio/olvid/messenger/activities/DiscussionActivity;->updateShortcut(Lio/olvid/messenger/databases/entity/Discussion;)V

    return-void
.end method
