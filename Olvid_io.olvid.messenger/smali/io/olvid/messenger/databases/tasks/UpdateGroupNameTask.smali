.class public Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;
.super Ljava/lang/Object;
.source "UpdateGroupNameTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bytesGroupUid:[B

.field private final bytesOwnedIdentity:[B

.field private final newName:Ljava/lang/String;


# direct methods
.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;->bytesGroupUid:[B

    .line 17
    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;->bytesOwnedIdentity:[B

    .line 18
    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;->newName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 23
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;->bytesGroupUid:[B

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/GroupDao;->get([B[B)Lio/olvid/messenger/databases/entity/Group;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateGroupNameTask;->newName:Ljava/lang/String;

    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Group;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/GroupDao;->update(Lio/olvid/messenger/databases/entity/Group;)V

    .line 31
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    iget-object v3, v1, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v2, v3, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByGroupOwnerAndUid([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 33
    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {v1}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 34
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 36
    invoke-static {v2}, Lio/olvid/messenger/activities/DiscussionActivity;->updateShortcut(Lio/olvid/messenger/databases/entity/Discussion;)V

    :cond_0
    return-void
.end method
