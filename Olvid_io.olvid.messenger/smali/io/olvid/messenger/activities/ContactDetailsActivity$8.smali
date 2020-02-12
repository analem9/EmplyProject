.class Lio/olvid/messenger/activities/ContactDetailsActivity$8;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->onClick(Landroid/view/View;)V
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

    .line 689
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$8;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$8;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 693
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$8;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$8;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$8;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->startTrustEstablishmentProtocol([BLjava/lang/String;[B)V

    .line 694
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$8;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lio/olvid/messenger/App;->showMainActivityTab(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 696
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
