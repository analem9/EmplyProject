.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$5;
.super Ljava/lang/Object;
.source "IdentityCreationActivityNoAPI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$5;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 544
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment$5;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$DisplayNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    if-eqz p1, :cond_0

    .line 546
    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$400(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)V

    :cond_0
    return-void
.end method
