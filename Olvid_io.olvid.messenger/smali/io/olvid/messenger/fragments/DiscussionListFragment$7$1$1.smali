.class Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;->this$2:Lio/olvid/messenger/fragments/DiscussionListFragment$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 375
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    new-instance v0, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$7$1$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
