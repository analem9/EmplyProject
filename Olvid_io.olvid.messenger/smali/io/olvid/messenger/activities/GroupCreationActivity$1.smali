.class Lio/olvid/messenger/activities/GroupCreationActivity$1;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$000(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupCreationActivity$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$000(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$1;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$000(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupCreationActivity$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
