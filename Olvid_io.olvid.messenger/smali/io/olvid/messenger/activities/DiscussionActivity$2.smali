.class Lio/olvid/messenger/activities/DiscussionActivity$2;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$2;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900c9

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$2;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-static {v0, p2}, Lio/olvid/messenger/activities/DiscussionActivity;->access$102(Lio/olvid/messenger/activities/DiscussionActivity;Z)Z

    if-nez p2, :cond_0

    .line 248
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$2;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
