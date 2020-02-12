.class public Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InvitationListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/InvitationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvitationListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/Invitation;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TYPE_GROUP:I = 0x2

.field private static final TYPE_SAS:I = 0x1

.field private static final TYPE_SIMPLE:I


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private invitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/olvid/messenger/fragments/InvitationListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/InvitationListFragment;Lio/olvid/messenger/fragments/InvitationListFragment;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 325
    invoke-virtual {p2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;
    .locals 0

    .line 316
    iget-object p0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 678
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 679
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 330
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 333
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Invitation;

    .line 334
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$InvitationListFragment$InvitationListAdapter(Ljava/lang/String;Lio/olvid/engine/engine/types/ObvDialog;Landroid/view/View;)V
    .locals 4

    .line 624
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100e9

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 625
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v3, 0x7f100079

    invoke-virtual {v1, v3, v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100096

    .line 626
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;

    invoke-direct {v2, p0, p2, p1, p3}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$4;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/ObvDialog;Ljava/lang/String;Landroid/view/View;)V

    const p1, 0x7f10003d

    .line 627
    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002d

    const/4 p3, 0x0

    .line 638
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 639
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 316
    check-cast p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;I)V
    .locals 11

    .line 377
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/Invitation;

    .line 381
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$200(Lio/olvid/messenger/fragments/InvitationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->clearInvitationNotification(Ljava/util/UUID;)V

    .line 385
    :cond_1
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    .line 387
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v1

    const-string v2, "%f %l (%p @ %c)"

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    const/16 v5, 0xa

    if-eq v1, v5, :cond_3

    const/16 v5, 0xc

    if-eq v1, v5, :cond_3

    .line 402
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    iget-object v5, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v1, v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 418
    invoke-virtual {v1, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 420
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v3

    .line 425
    :goto_0
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v5, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object v5

    invoke-static {v3}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    goto :goto_2

    .line 392
    :cond_3
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSerializedGroupDetails()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v1, v5, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 393
    invoke-virtual {v1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    :goto_1
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesGroupOwnerAndUid()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 429
    :goto_2
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Invitation;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->statusDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lio/olvid/messenger/databases/entity/Invitation;->displayStatusDescriptionTextAsync(Landroid/widget/TextView;)V

    .line 432
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->additionalHeaderSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 434
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result v1

    const v3, 0x7f100032

    const v5, 0x7f090085

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 656
    :pswitch_0
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v8, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    invoke-static {v2, v8, v9}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesGroupOwnerAndUid()[B

    move-result-object p2

    .line 658
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    new-instance v2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;

    invoke-direct {v2, p0, v0, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$5;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/ObvDialog;[B)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 666
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 667
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 668
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 669
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 670
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 616
    :pswitch_1
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v8, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    iget-object v8, v8, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b4

    iget-object v8, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->additionalHeaderSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 618
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 619
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object v2

    invoke-static {v2}, Lio/olvid/messenger/AppSingleton;->getContactCustomDisplayName([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 621
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 622
    iget-object v5, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-virtual {v5, v3, v8}, Lio/olvid/messenger/fragments/InvitationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 623
    new-instance v3, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;

    invoke-direct {v3, p0, v2, v0}, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$InvitationListAdapter$YLGb_9sWfI6wQw9ukS7wSzAczb8;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Ljava/lang/String;Lio/olvid/engine/engine/types/ObvDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 642
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 645
    :goto_3
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/databases/entity/Invitation;->listGroupMembersAsync(Landroid/widget/TextView;)V

    .line 646
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 648
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 650
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 651
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 652
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 460
    :pswitch_2
    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0c00b6

    iget-object v9, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->additionalHeaderSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 461
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 462
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesMediatorOrGroupOwnerIdentity()[B

    move-result-object v8

    invoke-static {v8}, Lio/olvid/messenger/AppSingleton;->getContactCustomDisplayName([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 464
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 465
    iget-object v9, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v8, v10, v7

    invoke-virtual {v9, v3, v10}, Lio/olvid/messenger/fragments/InvitationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 466
    new-instance v3, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$1;

    invoke-direct {v3, p0, v8, v0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$1;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Ljava/lang/String;Lio/olvid/engine/engine/types/ObvDialog;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 488
    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    const v3, 0x7f090086

    .line 491
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 493
    :try_start_2
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v5

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object v5

    const-class v8, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v3, v5, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 494
    iget-object v5, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    const v8, 0x7f10003b

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-virtual {v5, v8, v9}, Lio/olvid/messenger/fragments/InvitationListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    new-instance v2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;

    invoke-direct {v2, p0, v3, v0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$2;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/JsonIdentityDetails;Lio/olvid/engine/engine/types/ObvDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    :goto_5
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    iget-object p2, p2, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 523
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 524
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 603
    :pswitch_3
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    iget-object v2, v2, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/databases/entity/Invitation;->listGroupMembersAsync(Landroid/widget/TextView;)V

    .line 605
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->groupMembersGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 608
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 609
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 610
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 611
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 612
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 531
    :pswitch_4
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v8, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    invoke-static {v2, v8, v9}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getBytesContactIdentity()[B

    move-result-object p2

    .line 533
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    new-instance v2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$3;

    invoke-direct {v2, p0, v0, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$3;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Lio/olvid/engine/engine/types/ObvDialog;[B)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 540
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 541
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 542
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 544
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 577
    :pswitch_5
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v8, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    invoke-static {v2, v8, v9}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->yourSasTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSasToDisplay()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getLastSasDialogUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 580
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {p2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, "input_method"

    .line 582
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 583
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 585
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 586
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 587
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 593
    :cond_6
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    invoke-virtual {p2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 594
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->wrongCodeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->sasCorrectImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 599
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_7

    .line 548
    :pswitch_6
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v2}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v3

    iget-object v3, v3, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->yourSasTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getSasToDisplay()[B

    move-result-object v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 551
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getLastSasDialogUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 552
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    iget-wide v2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationTimestamp:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_9

    .line 553
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getLastSas()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getLastSas()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v7, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 555
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->wrongCodeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 557
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {p2}, Lio/olvid/messenger/fragments/InvitationListFragment;->access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getLastSas()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_7

    .line 558
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 560
    :cond_7
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 564
    :cond_8
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->theirSasEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->wrongCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    iget-wide v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    iput-wide v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->invitationTimestamp:J

    .line 569
    :cond_9
    :goto_6
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->sasCorrectImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 572
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->validateSasButton:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 449
    :pswitch_7
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p2

    iget-object p2, p2, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 452
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 453
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7

    .line 438
    :pswitch_8
    iget-object v0, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->timestampTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->this$0:Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-virtual {v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p2, Lio/olvid/messenger/databases/entity/Invitation;->invitationTimestamp:J

    invoke-static {v1, v2, v3}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->abortButton:Landroid/widget/Button;

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->goToButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->okButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 443
    iget-object p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->ignoreButton:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object p1, p1, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 316
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/Invitation;",
            ">;)V"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 687
    new-instance v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$6;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 715
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    .line 716
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 718
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->invitations:Ljava/util/List;

    .line 719
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 368
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005a

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c005b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 371
    :goto_0
    new-instance v0, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter$ViewHolder;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;Landroid/view/View;I)V

    return-object v0
.end method
