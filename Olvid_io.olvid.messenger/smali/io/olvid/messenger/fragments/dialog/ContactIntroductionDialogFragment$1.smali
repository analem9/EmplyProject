.class Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactIntroductionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->dismiss()V

    return-void
.end method
