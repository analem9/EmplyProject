.class public final synthetic Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lio/olvid/engine/engine/types/ObvDialog;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Ljava/lang/String;Lio/olvid/engine/engine/types/ObvDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;->f$0:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;->f$2:Lio/olvid/engine/engine/types/ObvDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;->f$0:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v1, p0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;->f$2:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v0, v1, v2, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->lambda$onBindViewHolder$0$InvitationListFragment$InvitationListAdapter(Ljava/lang/String;Lio/olvid/engine/engine/types/ObvDialog;Landroid/view/View;)V

    return-void
.end method
