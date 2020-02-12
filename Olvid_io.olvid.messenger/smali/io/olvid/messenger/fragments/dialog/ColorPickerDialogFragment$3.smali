.class Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;
.super Ljava/lang/Object;
.source "ColorPickerDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 153
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$600(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)V

    .line 160
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$700(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 162
    :catch_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$3;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$600(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Float;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
