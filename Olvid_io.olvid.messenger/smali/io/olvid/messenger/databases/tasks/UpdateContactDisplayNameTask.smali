.class public Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;
.super Ljava/lang/Object;
.source "UpdateContactDisplayNameTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bytesIdentity:[B

.field private final bytesOwnedIdentity:[B

.field private final identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;


# direct methods
.method public constructor <init>([B[BLio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->bytesIdentity:[B

    .line 19
    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->bytesOwnedIdentity:[B

    .line 20
    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 25
    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->bytesIdentity:[B

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/UpdateContactDisplayNameTask;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v2

    const-string v3, "%f %l (%p @ %c)"

    invoke-virtual {v2, v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 32
    iput v2, v1, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    .line 33
    iget-object v2, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/olvid/messenger/AppSingleton;->updateCachedCustomDisplayName([BLjava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    .line 37
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v2

    iget-object v3, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v2, v3, v4}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v2

    .line 38
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    .line 39
    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v1}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 40
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/olvid/messenger/databases/dao/DiscussionDao;->update(Lio/olvid/messenger/databases/entity/Discussion;)V

    .line 42
    invoke-static {v2}, Lio/olvid/messenger/activities/DiscussionActivity;->updateShortcut(Lio/olvid/messenger/databases/entity/Discussion;)V

    :cond_1
    :goto_0
    return-void
.end method
