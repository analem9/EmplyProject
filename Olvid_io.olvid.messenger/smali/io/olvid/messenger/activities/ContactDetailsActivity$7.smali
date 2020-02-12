.class Lio/olvid/messenger/activities/ContactDetailsActivity$7;
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

    .line 664
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$7;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$7;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x0

    .line 668
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$7;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$7;->val$contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {p2, v0, v1}, Lio/olvid/engine/engine/Engine;->restartAllOngoingChannelEstablishmentProtocols([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p2, 0x7f1001ef

    .line 673
    invoke-static {p2, p1}, Lio/olvid/messenger/App;->toast(II)V

    return-void

    :catch_0
    const p2, 0x7f1001ee

    .line 670
    invoke-static {p2, p1}, Lio/olvid/messenger/App;->toast(II)V

    return-void
.end method
