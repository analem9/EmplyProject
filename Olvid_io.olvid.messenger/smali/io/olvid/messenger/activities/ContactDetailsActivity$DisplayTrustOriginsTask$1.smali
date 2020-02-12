.class Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;Landroid/widget/Button;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 485
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;->val$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

    invoke-static {v3}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->access$100(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;)Lio/olvid/messenger/databases/entity/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100032

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;->val$button:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;->val$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method
