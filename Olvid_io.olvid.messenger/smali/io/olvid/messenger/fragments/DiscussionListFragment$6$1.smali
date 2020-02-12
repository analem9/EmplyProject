.class Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;
.super Ljava/lang/Object;
.source "DiscussionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/fragments/DiscussionListFragment$6;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$6;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/DiscussionListFragment$6;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;->this$1:Lio/olvid/messenger/fragments/DiscussionListFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 328
    new-instance p1, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;

    invoke-direct {p1, p0}, Lio/olvid/messenger/fragments/DiscussionListFragment$6$1$1;-><init>(Lio/olvid/messenger/fragments/DiscussionListFragment$6$1;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
