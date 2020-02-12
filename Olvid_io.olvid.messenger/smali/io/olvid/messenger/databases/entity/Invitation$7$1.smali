.class Lio/olvid/messenger/databases/entity/Invitation$7$1;
.super Ljava/lang/Object;
.source "Invitation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/databases/entity/Invitation$7;

.field final synthetic val$finalGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

.field final synthetic val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation$7;Lio/olvid/messenger/databases/entity/Contact;Landroid/widget/TextView;Lio/olvid/engine/engine/types/JsonGroupDetails;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->this$1:Lio/olvid/messenger/databases/entity/Invitation$7;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$textView:Landroid/widget/TextView;

    iput-object p4, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$finalGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 346
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000e4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v6}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$finalGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000e5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lio/olvid/messenger/databases/entity/Invitation$7$1;->val$finalGroupDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
