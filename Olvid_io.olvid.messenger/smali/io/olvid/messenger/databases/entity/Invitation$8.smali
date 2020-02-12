.class Lio/olvid/messenger/databases/entity/Invitation$8;
.super Ljava/lang/Object;
.source "Invitation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation;->listGroupMembersAsync(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/databases/entity/Invitation;

.field final synthetic val$membersTextViewWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$8;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$8;->val$membersTextViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 375
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 377
    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Invitation$8;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getBytesOwnedIdentity()[B

    move-result-object v2

    .line 379
    iget-object v3, p0, Lio/olvid/messenger/databases/entity/Invitation$8;->this$0:Lio/olvid/messenger/databases/entity/Invitation;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getPendingGroupMemberIdentities()[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    :goto_0
    const/16 v8, 0x21

    if-ge v5, v4, :cond_2

    aget-object v9, v3, v5

    if-nez v7, :cond_0

    .line 381
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 384
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v7

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v10

    invoke-interface {v7, v2, v10}, Lio/olvid/messenger/databases/dao/ContactDao;->get([B[B)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v7

    if-nez v7, :cond_1

    .line 386
    invoke-virtual {v9}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v7

    const-string v8, "%f %l (%p @ %c)"

    invoke-virtual {v7, v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 388
    :cond_1
    new-instance v10, Lio/olvid/messenger/databases/entity/Invitation$8$1;

    invoke-direct {v10, p0, v2, v9}, Lio/olvid/messenger/databases/entity/Invitation$8$1;-><init>(Lio/olvid/messenger/databases/entity/Invitation$8;[BLio/olvid/engine/engine/types/identities/ObvIdentity;)V

    .line 394
    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual {v7}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v9, v10, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 396
    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    .line 400
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 401
    new-instance v2, Landroid/text/SpannableString;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1001da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v0, v6, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 403
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 405
    :cond_3
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$8;->val$membersTextViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 407
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/olvid/messenger/databases/entity/Invitation$8$2;

    invoke-direct {v3, p0, v0, v1}, Lio/olvid/messenger/databases/entity/Invitation$8$2;-><init>(Lio/olvid/messenger/databases/entity/Invitation$8;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
