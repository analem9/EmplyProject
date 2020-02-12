.class Lio/olvid/messenger/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Invitation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$4;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MainActivity$4;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Invitation;

    .line 227
    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 236
    :cond_0
    :pswitch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$4;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$200(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->showNotificationDot(I)V

    return-void

    .line 241
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$4;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$200(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->hideNotificationDot(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
