.class public Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;
.super Ljava/lang/Object;
.source "UpdateContactCustomDisplayNameTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bytesIdentity:[B

.field private final bytesOwnedIdentity:[B

.field private final newName:Ljava/lang/String;


# direct methods
.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;->bytesIdentity:[B

    .line 18
    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;->bytesOwnedIdentity:[B

    .line 19
    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;->newName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 24
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;->bytesIdentity:[B

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateContactCustomDisplayNameTask;->newName:Ljava/lang/String;

    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    .line 28
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/messenger/AppSingleton;->updateCachedCustomDisplayName([BLjava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    .line 32
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    iget-object v3, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v2, v3, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 34
    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v1}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 35
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 37
    invoke-static {v2}, Lio/olvid/messenger/activities/DiscussionActivity;->updateShortcut(Lio/olvid/messenger/databases/entity/Discussion;)V

    :cond_0
    return-void
.end method
