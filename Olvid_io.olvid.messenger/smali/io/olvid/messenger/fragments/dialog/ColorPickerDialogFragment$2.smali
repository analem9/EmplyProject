.class Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;
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
.field pattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "^(#?)([0-9a-fA-F]{6}$)"

    .line 117
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 131
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 132
    iget-object v0, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$500(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {p1, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$500(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;

    invoke-static {p1, v1}, Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;->access$500(Lio/olvid/messenger/fragments/dialog/ColorPickerDialogFragment;Ljava/lang/Integer;)V

    :goto_0
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
