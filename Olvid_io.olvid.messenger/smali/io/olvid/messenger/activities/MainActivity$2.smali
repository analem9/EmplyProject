.class Lio/olvid/messenger/activities/MainActivity$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$2;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$2;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$200(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->showNotificationDot(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$2;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$200(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->hideNotificationDot(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MainActivity$2;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
