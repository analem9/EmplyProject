.class public Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;
.super Ljava/lang/Object;
.source "PromptToDeleteContactTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bytesContactIdentity:[B

.field private final bytesOwnedIdentity:[B

.field private final context:Landroid/content/Context;

.field private runOnDelete:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;[B[BLjava/lang/Runnable;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->bytesOwnedIdentity:[B

    .line 28
    iput-object p3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->bytesContactIdentity:[B

    .line 29
    iput-object p4, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->runOnDelete:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->runOnDelete:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 34
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->bytesContactIdentity:[B

    invoke-interface {v1, v2, v3}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactGroupJoinDao()Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->bytesOwnedIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->bytesContactIdentity:[B

    invoke-interface {v0, v2, v3}, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao;->countContactGroups([B[B)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const v6, 0x7f10003d

    const v7, 0x7f1100e9

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v2, v4

    if-nez v10, :cond_1

    .line 38
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10008d

    .line 39
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;

    invoke-direct {v3, p0, v1}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$1;-><init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;Lio/olvid/messenger/databases/entity/Contact;)V

    .line 40
    invoke-virtual {v2, v6, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10002d

    .line 59
    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->groupDao()Lio/olvid/messenger/databases/dao/GroupDao;

    move-result-object v2

    iget-object v3, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-interface {v2, v3, v4}, Lio/olvid/messenger/databases/dao/GroupDao;->getBytesGroupOwnerAndUidOfJoinedGroupWithPendingMember([B[B)Ljava/util/List;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v2, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->context:Landroid/content/Context;

    const v3, 0x7f100073

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->context:Landroid/content/Context;

    const v4, 0x7f100075

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$2;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$2;-><init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 74
    :cond_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10008e

    .line 75
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;->context:Landroid/content/Context;

    const v4, 0x7f100074

    new-array v5, v9, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$3;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask$3;-><init>(Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method
