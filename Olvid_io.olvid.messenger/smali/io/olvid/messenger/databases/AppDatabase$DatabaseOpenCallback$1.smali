.class Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;
.super Ljava/lang/Object;
.source "AppDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

.field final synthetic val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

.field final synthetic val$ownedIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;Lio/olvid/engine/engine/types/identities/ObvIdentity;Lio/olvid/engine/engine/types/identities/ObvIdentity;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    iput-object p2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iput-object p3, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$ownedIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 661
    :try_start_0
    new-instance v0, Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$ownedIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/messenger/databases/entity/Contact;-><init>([B[BLio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 662
    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/olvid/messenger/AppSingleton;->updateCachedCustomDisplayName([BLjava/lang/String;)V

    .line 663
    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v1}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/olvid/messenger/databases/dao/ContactDao;->insert(Lio/olvid/messenger/databases/entity/Contact;)V

    .line 664
    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v1}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v1, v2, v3}, Lio/olvid/messenger/databases/dao/DiscussionDao;->getByContact([B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v1

    if-nez v1, :cond_0

    .line 666
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$ownedIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/olvid/messenger/databases/entity/Discussion;->createOneToOneDiscussion(Ljava/lang/String;[B[B)Lio/olvid/messenger/databases/entity/Discussion;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback$1;->this$0:Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {v1}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;->access$100(Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;)Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/databases/AppDatabase;->discussionDao()Lio/olvid/messenger/databases/dao/DiscussionDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/olvid/messenger/databases/dao/DiscussionDao;->insert(Lio/olvid/messenger/databases/entity/Discussion;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
