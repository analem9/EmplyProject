.class Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactAdditionBottomSheetDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$1;->this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 68
    instance-of v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method
