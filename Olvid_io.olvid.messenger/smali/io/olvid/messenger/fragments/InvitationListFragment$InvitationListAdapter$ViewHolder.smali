.class public Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InvitationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final abortButton:Landroid/widget/Button;

.field final acceptButton:Landroid/widget/Button;

.field final additionalHeaderSpace:Landroid/widget/LinearLayout;

.field final goToButton:Landroid/widget/Button;

.field final groupMembersGroup:Landroid/widget/LinearLayout;

.field final groupMembersTextView:Landroid/widget/TextView;

.field final ignoreButton:Landroid/widget/Button;

.field final initialView:Lio/olvid/messenger/customClasses/InitialView;

.field final invitationRootView:Landroid/view/View;

.field invitationTimestamp:J

.field final nameTextView:Landroid/widget/TextView;

.field final okButton:Landroid/widget/Button;

.field final sasCorrectImageView:Landroid/widget/ImageView;

.field final statusDescriptionTextView:Landroid/widget/TextView;

.field final statusTextView:Landroid/widget/TextView;

.field final theirSasEditText:Landroid/widget/EditText;

.field final synthetic this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field final timestampTextView:Landroid/widget/TextView;

.field final validateSasButton:Landroid/widget/Button;

.field final wrongCodeTextView:Landroid/widget/TextView;

.field final yourSasTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Landroid/view/View;I)V
    .locals 2

    .line 752
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    .line 753
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 754
    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    .line 756
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f09019e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 757
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f0901a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    .line 758
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f0901a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 759
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f0901a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 760
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f0901a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->statusDescriptionTextView:Landroid/widget/TextView;

    .line 761
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->additionalHeaderSpace:Landroid/widget/LinearLayout;

    .line 763
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    .line 764
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    .line 765
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    .line 766
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090094

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    .line 767
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f09008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    .line 769
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090197

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->sasCorrectImageView:Landroid/widget/ImageView;

    .line 770
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f0902ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    .line 771
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f0902d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->yourSasTextView:Landroid/widget/TextView;

    .line 772
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090248

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->wrongCodeTextView:Landroid/widget/TextView;

    .line 773
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f09009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    const-wide/16 v0, 0x0

    .line 774
    iput-wide v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationTimestamp:J

    .line 776
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersTextView:Landroid/widget/TextView;

    .line 777
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationRootView:Landroid/view/View;

    const v0, 0x7f090172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersGroup:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 789
    :cond_1
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    new-instance p3, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$1;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 803
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    new-instance p3, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;

    invoke-direct {p3, p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$2;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 825
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    new-instance p3, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;

    invoke-direct {p3, p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$3;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 839
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 850
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 851
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-static {v1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 852
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 853
    new-instance v1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder$4;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;Landroid/view/View;)V

    invoke-static {v1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 871
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Invitation;

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationClicked(ILio/olvid/messenger/databases/entity/Invitation;Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->this$1:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-static {v2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Invitation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationClicked(ILio/olvid/messenger/databases/entity/Invitation;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
