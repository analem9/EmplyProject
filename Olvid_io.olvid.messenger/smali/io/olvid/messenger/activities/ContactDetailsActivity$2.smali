.class Lio/olvid/messenger/activities/ContactDetailsActivity$2;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->onDestroy()V
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

    .line 206
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$2;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    if-eqz v0, :cond_0

    iget v0, v0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    const/4 v1, 0x2

    iput v1, v0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    .line 211
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->contactDao()Lio/olvid/messenger/databases/dao/ContactDao;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$2;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-interface {v0, v1}, Lio/olvid/messenger/databases/dao/ContactDao;->update(Lio/olvid/messenger/databases/entity/Contact;)V

    :cond_0
    return-void
.end method
