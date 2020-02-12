.class Lio/olvid/messenger/databases/entity/Invitation$2$1;
.super Ljava/lang/Object;
.source "Invitation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/databases/entity/Invitation$2;

.field final synthetic val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

.field final synthetic val$mediator:Lio/olvid/messenger/databases/entity/Contact;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation$2;Lio/olvid/messenger/databases/entity/Contact;Landroid/widget/TextView;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->this$1:Lio/olvid/messenger/databases/entity/Invitation$2;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$mediator:Lio/olvid/messenger/databases/entity/Contact;

    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$textView:Landroid/widget/TextView;

    iput-object p4, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 208
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$mediator:Lio/olvid/messenger/databases/entity/Contact;

    const-string v1, "%f %l (%p @ %c)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000eb

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$mediator:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v7}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v2, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000ec

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lio/olvid/messenger/databases/entity/Invitation$2$1;->val$identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v6, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
