.class Lio/olvid/messenger/activities/ContactDetailsActivity$6;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lio/olvid/messenger/databases/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$6;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$6;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->displayDetails(Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 589
    check-cast p1, Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity$6;->onChanged(Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method
