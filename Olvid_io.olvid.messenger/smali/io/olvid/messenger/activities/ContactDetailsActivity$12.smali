.class Lio/olvid/messenger/activities/ContactDetailsActivity$12;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 792
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$12;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-virtual {v0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->onBackPressed()V

    return-void
.end method
