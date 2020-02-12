.class Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;
.super Ljava/lang/Object;
.source "ContactAdditionBottomSheetDialogFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->dismiss()V

    .line 196
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 197
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 198
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    const/16 v2, 0x11

    invoke-virtual {v1, p1, v2}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;->this$0:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->dismiss()V

    .line 176
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    sget-object v1, Lio/olvid/messenger/activities/ObvLinkActivity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1}, Lio/olvid/messenger/App;->processLink(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1001ff

    .line 190
    invoke-static {p1, v0}, Lio/olvid/messenger/App;->toast(II)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090225
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
