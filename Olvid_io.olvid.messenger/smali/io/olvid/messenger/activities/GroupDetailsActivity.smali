.class public Lio/olvid/messenger/activities/GroupDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GroupDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;,
        Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;,
        Lio/olvid/messenger/activities/GroupDetailsActivity$DividerItemDecoration;
    }
.end annotation


# static fields
.field public static final BYTES_GROUP_OWNER_AND_UID_INTENT_EXTRA:Ljava/lang/String; = "group_id"

.field public static final BYTES_OWNED_IDENTITY_INTENT_EXTRA:Ljava/lang/String; = "bytes_owned_identity"

.field public static final EDIT_DETAILS_INTENT_EXTRA:Ljava/lang/String; = "edit_details"


# instance fields
.field private acceptUpdateCardView:Landroidx/cardview/widget/CardView;

.field private animationsSet:Z

.field private discussionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private firstDetailsButtons:Landroid/widget/LinearLayout;

.field private firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private firstDetailsTextViews:Landroid/widget/LinearLayout;

.field private firstDetailsTitle:Landroid/widget/TextView;

.field private groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

.field private groupInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private groupIsOwned:Z

.field private groupManagementButtons:Landroid/view/ViewGroup;

.field private groupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

.field private groupMembersEmptyView:Landroid/widget/TextView;

.field private final groupMembersHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/databases/AppDatabase$BytesKey;",
            "Lio/olvid/messenger/databases/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private groupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field private groupNameTextView:Landroid/widget/TextView;

.field private groupOwnerTextView:Landroid/widget/TextView;

.field private latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

.field private mainConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private pendingGroupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

.field private pendingGroupMembersEmptyView:Landroid/widget/TextView;

.field private pendingGroupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field private primary700:I

.field private publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

.field private registrationNumber:J

.field private secondDetailsCardView:Landroidx/cardview/widget/CardView;

.field private secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private secondDetailsTextViews:Landroid/widget/LinearLayout;

.field private secondDetailsTitle:Landroid/widget/TextView;

.field private showEditDetails:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->animationsSet:Z

    .line 114
    iput-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupIsOwned:Z

    .line 115
    iput-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->showEditDetails:Z

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->displayGroupDetails(Lio/olvid/messenger/databases/entity/Group;)V

    return-void
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/GroupDetailsActivity;Ljava/util/List;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->displayGroupMembersDetails(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lio/olvid/messenger/activities/GroupDetailsActivity;Ljava/util/List;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->displayPendingGroupMembersDetails(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lio/olvid/messenger/activities/GroupDetailsActivity;)Lio/olvid/messenger/viewModels/GroupDetailsViewModel;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    return-object p0
.end method

.method static synthetic access$600(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMemberClicked(Lio/olvid/messenger/databases/entity/Contact;)V

    return-void
.end method

.method private displayGroupDetails(Lio/olvid/messenger/databases/entity/Group;)V
    .locals 10

    if-nez p1, :cond_0

    .line 304
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->finish()V

    return-void

    .line 307
    :cond_0
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupIsOwned:Z

    .line 308
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->invalidateOptionsMenu()V

    .line 309
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {v0}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 311
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v3, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v0, v3}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 313
    iget-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupIsOwned:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupOwnerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupManagementButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 317
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupOwnerTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupManagementButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 319
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    invoke-direct {p0, v0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->setGroupOwnerText([B)V

    .line 323
    :goto_1
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v4, p1, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v5, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v0, v4, v5}, Lio/olvid/engine/engine/Engine;->getGroupPublishedAndLatestOrTrustedDetails([B[B)[Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 324
    array-length v4, v0

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 328
    :cond_3
    array-length v4, v0

    const v5, 0x7f100106

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x2

    if-ne v4, v1, :cond_6

    .line 329
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 330
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 331
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    const v4, 0x7f08006a

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 337
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v3

    iput-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 338
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    iput-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 339
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 340
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v4, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_2

    .line 342
    :cond_4
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 346
    :goto_2
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 349
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 352
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    :cond_5
    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$5;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$5;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 367
    :cond_6
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 368
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 369
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 371
    iget-object v4, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    const v8, 0x7f08006b

    if-nez v4, :cond_d

    .line 372
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    const v5, 0x7f100109

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    invoke-static {p0, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTitle:Landroid/widget/TextView;

    const v5, 0x7f100107

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 378
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v3

    iput-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 381
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 382
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v4, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_3

    .line 384
    :cond_7
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v3, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v2, v3}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 388
    :goto_3
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 389
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 394
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 395
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    :cond_8
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v2

    iput-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 400
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 401
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v3, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_4

    .line 403
    :cond_9
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v2, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 407
    :goto_4
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 408
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 411
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 413
    :cond_a
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 416
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 417
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 419
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 421
    :cond_b
    iget-object v2, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    :cond_c
    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$6;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$6;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 434
    :cond_d
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    const v9, 0x7f100108

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 435
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    invoke-static {p0, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 439
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 440
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v3

    .line 443
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 444
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v5, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    aget-object v8, v0, v1

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_5

    .line 446
    :cond_e
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v5, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v4, v5}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 450
    :goto_5
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 451
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 453
    iget-object v5, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 456
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 457
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v5, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    :cond_f
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v4

    iput-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 462
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 463
    iget-object v4, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_6

    .line 465
    :cond_10
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    .line 469
    :goto_6
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 470
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {p1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 472
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 473
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 475
    :cond_11
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_13

    .line 478
    invoke-direct {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    .line 479
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 481
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 483
    :cond_12
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_13
    :goto_7
    iget-boolean p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->animationsSet:Z

    if-nez p1, :cond_14

    .line 494
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->mainConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 495
    iput-boolean v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->animationsSet:Z

    :cond_14
    :goto_8
    return-void

    :catch_0
    move-exception p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private displayGroupMembersDetails(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;",
            ">;)V"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;->setContacts(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 512
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 513
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;

    .line 514
    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersHashMap:Ljava/util/HashMap;

    new-instance v2, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object v3, v0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v2, v3}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/ContactGroupJoinDao$ContactAndTimestamp;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 517
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Group;

    if-eqz p1, :cond_1

    .line 518
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-eqz v0, :cond_1

    .line 519
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->setGroupOwnerText([B)V

    :cond_1
    return-void
.end method

.method private displayPendingGroupMembersDetails(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/dao/PendingGroupMemberDao$PendingGroupMemberAndContact;",
            ">;)V"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;->setPendingGroupMembers(Ljava/util/List;)V

    return-void
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 4

    .line 500
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 501
    iget v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->primary700:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 503
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 504
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private groupMemberClicked(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    .line 981
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {p0, v0, p1}, Lio/olvid/messenger/App;->openContactDetailsActivity(Landroid/content/Context;[B[B)V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "bytes_owned_identity"

    .line 257
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "group_id"

    .line 258
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "edit_details"

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->showEditDetails:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 269
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 271
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 274
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 275
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 278
    :cond_3
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->setGroup([B[B)V

    .line 279
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$2;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 288
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$3;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$3;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 294
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getPendingGroupMembers()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$4;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$4;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 263
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->finish()V

    const-string p1, "Missing owned identity or group id in intent."

    .line 264
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private setGroupOwnerText([B)V
    .locals 4

    .line 530
    new-instance v0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v0, p1}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    .line 531
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 532
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Contact;

    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupOwnerTextView:Landroid/widget/TextView;

    const v1, 0x7f1001d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
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

    .line 541
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x73dcf224

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "engine_notification_new_group_photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "bytes_owned_identity"

    .line 543
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "bytes_group_uid"

    .line 544
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v1, "is_trusted"

    .line 545
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 547
    iget-object v1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Group;

    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    .line 548
    iget-object p2, v1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    .line 550
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v1, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    .line 551
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 552
    new-instance p1, Lio/olvid/messenger/activities/GroupDetailsActivity$7;

    invoke-direct {p1, p0, v1}, Lio/olvid/messenger/activities/GroupDetailsActivity$7;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 571
    iget-wide v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->registrationNumber:J

    return-wide v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 619
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 577
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Group;

    if-nez v0, :cond_1

    return-void

    .line 585
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v1, "dialog"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 610
    :sswitch_0
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {p1, v0}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->newInstance([B[B)Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;

    move-result-object p1

    .line 611
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/fragments/dialog/GroupMemberSuppressionDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :sswitch_1
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {p1, v0}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->newInstance([B[B)Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;

    move-result-object p1

    .line 606
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/fragments/dialog/GroupMemberAdditionDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :sswitch_2
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {p0, p1, v0}, Lio/olvid/messenger/App;->openGroupDiscussionActivity(Landroid/content/Context;[B[B)V

    goto :goto_0

    .line 591
    :sswitch_3
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p1, v1, v2}, Lio/olvid/engine/engine/Engine;->trustPublishedGroupDetails([B[B)V

    .line 592
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-static {p1}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    goto :goto_0

    .line 596
    :sswitch_4
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p1, v1, v0}, Lio/olvid/engine/engine/Engine;->publishLatestGroupDetails([B[B)V

    goto :goto_0

    .line 600
    :sswitch_5
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Group;->bytesOwnedIdentity:[B

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerAndUid:[B

    invoke-virtual {p1, v1, v2}, Lio/olvid/engine/engine/Engine;->discardLatestGroupDetails([B[B)V

    .line 601
    invoke-direct {p0, v0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->displayGroupDetails(Lio/olvid/messenger/databases/entity/Group;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_5
        0x7f090097 -> :sswitch_4
        0x7f090099 -> :sswitch_3
        0x7f090163 -> :sswitch_2
        0x7f090168 -> :sswitch_1
        0x7f09016a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    const p1, 0x7f0c0021

    .line 123
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f09015f

    .line 130
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->mainConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f090163

    .line 132
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->discussionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 133
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->discussionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09015e

    .line 135
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupInitialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f090179

    .line 136
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupNameTextView:Landroid/widget/TextView;

    const p1, 0x7f09017a

    .line 137
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupOwnerTextView:Landroid/widget/TextView;

    const p1, 0x7f090169

    .line 138
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupManagementButtons:Landroid/view/ViewGroup;

    const p1, 0x7f090168

    .line 140
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 141
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09016a

    .line 142
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090155

    .line 146
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090099

    .line 147
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 148
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09014a

    .line 150
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTitle:Landroid/widget/TextView;

    const p1, 0x7f090149

    .line 151
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsTextViews:Landroid/widget/LinearLayout;

    const p1, 0x7f090148

    .line 152
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 153
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setIgnoreCache(Z)V

    const p1, 0x7f090146

    .line 154
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->firstDetailsButtons:Landroid/widget/LinearLayout;

    const p1, 0x7f090260

    .line 156
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsCardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090263

    .line 157
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTitle:Landroid/widget/TextView;

    const p1, 0x7f090262

    .line 158
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsTextViews:Landroid/widget/LinearLayout;

    const p1, 0x7f090261

    .line 159
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 160
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->secondDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setIgnoreCache(Z)V

    const p1, 0x7f090097

    .line 162
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 163
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09008c

    .line 164
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 165
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090171

    .line 169
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersEmptyView:Landroid/widget/TextView;

    const p1, 0x7f090173

    .line 170
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 171
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    new-instance p1, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    .line 174
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$GroupMembersAdapter;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 176
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$DividerItemDecoration;

    invoke-direct {v0, p0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$DividerItemDecoration;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p1, 0x7f090219

    .line 178
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersEmptyView:Landroid/widget/TextView;

    const p1, 0x7f09021b

    .line 179
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 180
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    new-instance p1, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    .line 183
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 184
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersAdapter:Lio/olvid/messenger/activities/GroupDetailsActivity$PendingGroupMembersAdapter;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->pendingGroupMembersRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v0, Lio/olvid/messenger/activities/GroupDetailsActivity$DividerItemDecoration;

    invoke-direct {v0, p0, p0}, Lio/olvid/messenger/activities/GroupDetailsActivity$DividerItemDecoration;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p1, 0x7f0600ca

    .line 187
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->primary700:I

    .line 189
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_new_group_photo"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    .line 190
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 624
    iget-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupIsOwned:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 629
    :goto_0
    iget-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->showEditDetails:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->showEditDetails:Z

    const v1, 0x7f090049

    .line 631
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->performIdentifierAction(II)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 196
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    const-string v1, "engine_notification_new_group_photo"

    invoke-virtual {v0, v1, p0}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    .line 197
    iget-object v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Group;

    .line 198
    new-instance v1, Lio/olvid/messenger/activities/GroupDetailsActivity$1;

    invoke-direct {v1, p0, v0}, Lio/olvid/messenger/activities/GroupDetailsActivity$1;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    invoke-static {v1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 638
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f10002d

    const v3, 0x7f10003d

    const v4, 0x7f1100e9

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 844
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 643
    :sswitch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-nez p1, :cond_0

    return v6

    .line 646
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Group;

    if-nez p1, :cond_1

    return v6

    .line 650
    :cond_1
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-nez v0, :cond_3

    .line 651
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090161

    .line 652
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const v7, 0x7f090160

    .line 653
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    const v8, 0x7f09015d

    .line 654
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 655
    iget-object v9, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    if-nez v9, :cond_2

    return v6

    .line 658
    :cond_2
    invoke-virtual {v9}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v9, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/JsonGroupDetails;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 660
    new-instance v9, Lio/olvid/messenger/activities/GroupDetailsActivity$8;

    invoke-direct {v9, p0, v7, v1}, Lio/olvid/messenger/activities/GroupDetailsActivity$8;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 678
    invoke-virtual {v7, v9}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 679
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f100093

    .line 680
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 681
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/GroupDetailsActivity$9;

    invoke-direct {v1, p0, v7, v8, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$9;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Group;)V

    .line 682
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 708
    invoke-virtual {p1, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 711
    :cond_3
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012f

    .line 712
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 713
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 714
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v7, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f1000a3

    .line 715
    invoke-virtual {v7, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 716
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lio/olvid/messenger/activities/GroupDetailsActivity$10;

    invoke-direct {v4, p0, v1, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$10;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Group;)V

    .line 717
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100042

    .line 733
    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 734
    invoke-virtual {v0, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 737
    new-instance v2, Lio/olvid/messenger/activities/GroupDetailsActivity$11;

    invoke-direct {v2, p0, v1, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$11;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Group;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 753
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    return v6

    .line 814
    :sswitch_1
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-nez p1, :cond_4

    return v6

    .line 817
    :cond_4
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Group;

    if-nez p1, :cond_5

    return v6

    .line 822
    :cond_5
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/Group;->bytesGroupOwnerIdentity:[B

    if-eqz v0, :cond_6

    .line 823
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f10009c

    .line 824
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f10007e

    new-array v7, v6, [Ljava/lang/Object;

    .line 825
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p0, v4, v7}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/GroupDetailsActivity$13;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$13;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    .line 826
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 838
    invoke-virtual {p1, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 839
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_6
    return v6

    .line 758
    :sswitch_2
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-nez p1, :cond_7

    return v6

    .line 761
    :cond_7
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupDetailsViewModel:Lio/olvid/messenger/viewModels/GroupDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/GroupDetailsViewModel;->getGroup()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Group;

    if-nez p1, :cond_8

    return v6

    .line 765
    :cond_8
    iget-boolean v0, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->groupIsOwned:Z

    if-eqz v0, :cond_9

    .line 766
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f100091

    .line 767
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f100077

    new-array v7, v6, [Ljava/lang/Object;

    .line 768
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Group;->getCustomName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p0, v4, v7}, Lio/olvid/messenger/activities/GroupDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/GroupDetailsActivity$12;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/GroupDetailsActivity$12;-><init>(Lio/olvid/messenger/activities/GroupDetailsActivity;Lio/olvid/messenger/databases/entity/Group;)V

    .line 769
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 808
    invoke-virtual {p1, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 809
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_9
    return v6

    .line 640
    :sswitch_3
    invoke-virtual {p0}, Lio/olvid/messenger/activities/GroupDetailsActivity;->onBackPressed()V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f09003e -> :sswitch_2
        0x7f090042 -> :sswitch_1
        0x7f090049 -> :sswitch_0
    .end sparse-switch
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 566
    iput-wide p1, p0, Lio/olvid/messenger/activities/GroupDetailsActivity;->registrationNumber:J

    return-void
.end method
