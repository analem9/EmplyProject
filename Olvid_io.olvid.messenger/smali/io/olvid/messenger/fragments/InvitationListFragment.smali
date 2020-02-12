.class public Lio/olvid/messenger/fragments/InvitationListFragment;
.super Landroidx/fragment/app/Fragment;
.source "InvitationListFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

.field private currentIdentityWatcher:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private engineNotificationListenerRegistrationNumber:J

.field private invitationListViewModel:Lio/olvid/messenger/viewModels/InvitationListViewModel;

.field private invitationsAreVisible:Z

.field private recyclerEmptyView:Landroid/view/View;

.field private recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/InvitationListFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/fragments/InvitationListFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationsAreVisible:Z

    return p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/viewModels/InvitationListViewModel;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationListViewModel:Lio/olvid/messenger/viewModels/InvitationListViewModel;

    return-object p0
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "engine_notification_server_polled"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bytes_owned_identity"

    .line 132
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "success"

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 134
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/olvid/messenger/fragments/InvitationListFragment$2;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$2;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->engineNotificationListenerRegistrationNumber:J

    return-wide v0
.end method

.method public invitationClicked(ILio/olvid/messenger/databases/entity/Invitation;Ljava/lang/String;)V
    .locals 6

    .line 164
    iget-object v0, p2, Lio/olvid/messenger/databases/entity/Invitation;->associatedDialog:Lio/olvid/engine/engine/types/ObvDialog;

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 229
    :sswitch_0
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 231
    :try_start_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationListViewModel:Lio/olvid/messenger/viewModels/InvitationListViewModel;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->setLastSas(Ljava/lang/String;Ljava/util/UUID;)V

    .line 232
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToSasExchange([B)V

    .line 233
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 240
    :sswitch_1
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    const/16 p3, 0xb

    if-eq p1, p3, :cond_0

    const/16 p3, 0xc

    if-eq p1, p3, :cond_0

    goto/16 :goto_1

    .line 245
    :cond_0
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lio/olvid/engine/engine/Engine;->deletePersistedDialog(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 198
    :sswitch_2
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    if-eq p1, v5, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 219
    :cond_1
    :try_start_2
    invoke-virtual {v0, v4}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptGroupInvite(Z)V

    .line 220
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 210
    :cond_2
    :try_start_3
    invoke-virtual {v0, v4}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptMediatorInvite(Z)V

    .line 211
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 201
    :cond_3
    :try_start_4
    invoke-virtual {v0, v4}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptInvite(Z)V

    .line 202
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 167
    :sswitch_3
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    if-eq p1, v5, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto/16 :goto_1

    .line 188
    :cond_4
    :try_start_5
    invoke-virtual {v0, v5}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptGroupInvite(Z)V

    .line 189
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 179
    :cond_5
    :try_start_6
    invoke-virtual {v0, v5}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptMediatorInvite(Z)V

    .line 180
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 170
    :cond_6
    :try_start_7
    invoke-virtual {v0, v5}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptInvite(Z)V

    .line 171
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 254
    :sswitch_4
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p3, 0x5

    if-eq p1, p3, :cond_8

    const/4 p3, 0x7

    if-eq p1, p3, :cond_8

    if-eq p1, v3, :cond_8

    const/4 p3, 0x3

    if-eq p1, p3, :cond_8

    const/16 p3, 0x9

    if-eq p1, p3, :cond_8

    const/16 p2, 0xa

    if-eq p1, p2, :cond_7

    goto :goto_1

    .line 292
    :cond_7
    :try_start_8
    invoke-virtual {v0, v4}, Lio/olvid/engine/engine/types/ObvDialog;->setResponseToAcceptGroupInvite(Z)V

    .line 293
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->respondToDialog(Lio/olvid/engine/engine/types/ObvDialog;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_1

    :catch_8
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 262
    :cond_8
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getId()I

    move-result p1

    if-nez p1, :cond_9

    .line 263
    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_9
    :try_start_9
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p1

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/ObvDialog;->getCategory()Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p3

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/ObvDialog$Category;->getContactDisplayNameOrSerializedDetails()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {p1, p3, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    const-string p3, "%f %l (%p @ %c)"

    .line 267
    invoke-virtual {p1, p3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 272
    :catch_9
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1100e9

    invoke-direct {p1, p3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p3, 0x7f100085

    .line 273
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f10006c

    .line 275
    invoke-virtual {p0, p3}, Lio/olvid/messenger/fragments/InvitationListFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f10003d

    new-instance v0, Lio/olvid/messenger/fragments/InvitationListFragment$3;

    invoke-direct {v0, p0, p2}, Lio/olvid/messenger/fragments/InvitationListFragment$3;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment;Lio/olvid/messenger/databases/entity/Invitation;)V

    .line 276
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002d

    const/4 p3, 0x0

    .line 286
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_a
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090087 -> :sswitch_4
        0x7f090088 -> :sswitch_3
        0x7f090090 -> :sswitch_2
        0x7f090094 -> :sswitch_1
        0x7f09009a -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic lambda$onCreateView$0$InvitationListFragment(Ljava/util/HashMap;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/InvitationListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/InvitationListViewModel;

    iput-object p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationListViewModel:Lio/olvid/messenger/viewModels/InvitationListViewModel;

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationsAreVisible:Z

    .line 79
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_server_polled"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0c0026

    .line 84
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901a1

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 87
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/InvitationListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0, p2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p2, 0x7f09019f

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->recyclerEmptyView:Landroid/view/View;

    .line 92
    new-instance p2, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-direct {p2, p0, p0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment;Lio/olvid/messenger/fragments/InvitationListFragment;)V

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    .line 93
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$C75JVLfOIozpK4aLJ3f3KPDVj3o;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/-$$Lambda$InvitationListFragment$C75JVLfOIozpK4aLJ3f3KPDVj3o;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment;)V

    invoke-virtual {p2, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 95
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationListViewModel:Lio/olvid/messenger/viewModels/InvitationListViewModel;

    invoke-virtual {p2}, Lio/olvid/messenger/viewModels/InvitationListViewModel;->getInvitations()Landroidx/lifecycle/LiveData;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-virtual {p2, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 96
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->recyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->recyclerEmptyView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    const p2, 0x7f090118

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 100
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 101
    iget-object p2, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0600ca

    aput v1, v0, p3

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-object p1
.end method

.method public onRefresh()V
    .locals 2

    .line 108
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/Engine;->downloadMessages([B)V

    .line 110
    new-instance v0, Lio/olvid/messenger/fragments/InvitationListFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/InvitationListFragment$1;-><init>(Lio/olvid/messenger/fragments/InvitationListFragment;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 155
    iput-wide p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->engineNotificationListenerRegistrationNumber:J

    return-void
.end method

.method public setInvitationsAreVisible(Z)V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationsAreVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->adapter:Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;

    invoke-static {v0}, Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;->access$100(Lio/olvid/messenger/fragments/InvitationListFragment$InvitationListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Invitation;

    .line 309
    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Invitation;->dialogUuid:Ljava/util/UUID;

    invoke-static {v1}, Lio/olvid/messenger/AndroidNotificationManager;->clearInvitationNotification(Ljava/util/UUID;)V

    goto :goto_0

    .line 313
    :cond_0
    iput-boolean p1, p0, Lio/olvid/messenger/fragments/InvitationListFragment;->invitationsAreVisible:Z

    return-void
.end method
