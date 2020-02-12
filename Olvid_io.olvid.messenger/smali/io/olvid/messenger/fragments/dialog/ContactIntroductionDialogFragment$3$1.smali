.class Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;
.super Ljava/lang/Object;
.source "ContactIntroductionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->contactClicked(Landroid/view/View;Lio/olvid/messenger/databases/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;

.field final synthetic val$contact:Lio/olvid/messenger/databases/entity/Contact;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;->this$1:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;

    iput-object p2, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 122
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;->this$1:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;

    iget-object p2, p2, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-static {p2}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->access$100(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)[B

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;->this$1:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;

    iget-object v0, v0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->access$000(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)[B

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$3$1;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->startContactMutualIntroductionProtocol([B[B[B)V

    const/16 p1, 0x14

    .line 123
    invoke-static {p1}, Lio/olvid/messenger/AnonymousUsageService;->log(I)V

    const p1, 0x7f1001f1

    const/4 p2, 0x0

    .line 124
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
