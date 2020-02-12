.class Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;
.super Ljava/lang/Object;
.source "ColorPickerDialogFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

.field tracking:Z


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;->tracking:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 172
    iget-boolean p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;->tracking:Z

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {p1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$800(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "%.2f"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;->tracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$4;->tracking:Z

    return-void
.end method
