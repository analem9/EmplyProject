.class Lio/olvid/messenger/activities/DiscussionActivity$14;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/DiscussionActivity;

.field final synthetic val$discussion:Lio/olvid/messenger/databases/entity/Discussion;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1098
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->val$discussion:Lio/olvid/messenger/databases/entity/Discussion;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lio/olvid/messenger/activities/DiscussionActivity;->getShortcutInfo(J[B[BLjava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity$14;->this$0:Lio/olvid/messenger/activities/DiscussionActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    return-void
.end method
