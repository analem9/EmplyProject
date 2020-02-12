.class Lio/olvid/messenger/databases/entity/Invitation$4$1;
.super Ljava/lang/Object;
.source "Invitation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/databases/entity/Invitation$4;

.field final synthetic val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation$4;Lio/olvid/messenger/databases/entity/Contact;Landroid/widget/TextView;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->this$1:Lio/olvid/messenger/databases/entity/Invitation$4;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 262
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000db

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->val$groupOwner:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$4$1;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1000dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
