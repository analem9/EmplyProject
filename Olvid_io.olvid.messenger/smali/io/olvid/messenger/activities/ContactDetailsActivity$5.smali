.class Lio/olvid/messenger/activities/ContactDetailsActivity$5;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->callback(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

.field final synthetic val$contact:Lio/olvid/messenger/databases/entity/Contact;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$5;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$5;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 444
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$5;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$5;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->displayDetails(Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method
