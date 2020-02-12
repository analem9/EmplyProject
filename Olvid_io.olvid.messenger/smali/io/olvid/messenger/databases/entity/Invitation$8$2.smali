.class Lio/olvid/messenger/databases/entity/Invitation$8$2;
.super Ljava/lang/Object;
.source "Invitation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/databases/entity/Invitation$8;

.field final synthetic val$builder:Landroid/text/SpannableStringBuilder;

.field final synthetic val$membersTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation$8;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$8$2;->this$1:Lio/olvid/messenger/databases/entity/Invitation$8;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$8$2;->val$membersTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Invitation$8$2;->val$builder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 410
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$8$2;->val$membersTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation$8$2;->val$builder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
