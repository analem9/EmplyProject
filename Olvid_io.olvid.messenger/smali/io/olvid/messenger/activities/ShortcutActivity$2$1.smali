.class Lio/olvid/messenger/activities/ShortcutActivity$2$1;
.super Ljava/lang/Object;
.source "ShortcutActivity.java"

# interfaces
.implements Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ShortcutActivity$2;->onChanged(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/ShortcutActivity$2;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ShortcutActivity$2;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$2$1;->this$1:Lio/olvid/messenger/activities/ShortcutActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discussionClicked(Landroid/view/View;Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lio/olvid/messenger/activities/ShortcutActivity$2$1;->this$1:Lio/olvid/messenger/activities/ShortcutActivity$2;

    iget-object p1, p1, Lio/olvid/messenger/activities/ShortcutActivity$2;->this$0:Lio/olvid/messenger/activities/ShortcutActivity;

    invoke-static {p1, p2}, Lio/olvid/messenger/activities/ShortcutActivity;->access$000(Lio/olvid/messenger/activities/ShortcutActivity;Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;)V

    return-void
.end method
