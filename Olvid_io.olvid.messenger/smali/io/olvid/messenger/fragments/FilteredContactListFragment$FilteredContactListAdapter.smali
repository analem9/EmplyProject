.class Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FilteredContactListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/FilteredContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilteredContactListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME_CHANGE_MASK:I = 0x1

.field private static final ESTABLISHED_CHANNEL_CHANGE_MASK:I = 0x2

.field private static final NEW_PUBLISHED_DETAILS_CHANGE_MASK:I = 0x10

.field private static final SELECTED_CHANGE_MASK:I = 0x4

.field static final TYPE_CONTACT:I = 0x1

.field static final TYPE_MY_ID:I


# instance fields
.field private filteredContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;"
        }
    .end annotation
.end field

.field private final highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

.field private final inflater:Landroid/view/LayoutInflater;

.field private showMyId:Z

.field final synthetic this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredContactListFragment;)V
    .locals 5

    .line 273
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 274
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/text/style/BackgroundColorSpan;

    .line 275
    iput-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 277
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060019

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$000(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Ljava/util/List;
    .locals 0

    .line 258
    iget-object p0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;)Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 555
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    return v1

    .line 561
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 562
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 284
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 258
    check-cast p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 258
    check-cast p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 420
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 421
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-eqz p2, :cond_2

    .line 423
    iget-object p3, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactNameTextView:Landroid/widget/TextView;

    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object p3, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v4, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 425
    iget p2, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-object p2, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->unpublishedDetailsIcon:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object p2, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->unpublishedDetailsIcon:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_2
    :goto_0
    iget-object p2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 437
    :cond_3
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->trustedContactsMyIdFooter:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 435
    :cond_4
    :goto_1
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->trustedContactsMyIdFooter:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 440
    :cond_5
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    if-eqz v0, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 443
    :cond_6
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 445
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const/4 p3, -0x1

    goto :goto_3

    .line 448
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :cond_8
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 449
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 450
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v0, v4

    goto :goto_2

    :cond_9
    move p3, v0

    .line 455
    :goto_3
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;

    .line 457
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getFilterPatterns()Ljava/util/List;

    move-result-object v0

    .line 458
    iget-object v4, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object v4, v4, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->getFilter()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_e

    .line 459
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 460
    iget-object v5, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->currentFilter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_10

    .line 462
    :cond_a
    iget-object v5, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v7}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 464
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/regex/Pattern;

    .line 465
    iget-object v9, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    array-length v9, v9

    if-ne v7, v9, :cond_c

    goto :goto_5

    .line 468
    :cond_c
    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 469
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 470
    iget-object v9, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    aget-object v9, v9, v7

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    const/16 v11, 0x21

    invoke-interface {v6, v9, v10, v8, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 474
    :cond_d
    :goto_5
    iput-object v4, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->currentFilter:Ljava/lang/String;

    .line 475
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_f

    .line 478
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->currentFilter:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->currentFilter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 479
    :cond_f
    iput-object v4, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->currentFilter:Ljava/lang/String;

    .line 480
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactNameTextView:Landroid/widget/TextView;

    iget-object v4, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_6
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_11

    .line 484
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v4, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v5, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    invoke-virtual {v5}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    :cond_11
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_14

    .line 488
    iget-object v0, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v0, v0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-nez v0, :cond_13

    .line 489
    iput-boolean v2, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->shouldAnimateChannelImageView:Z

    .line 490
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 491
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080096

    invoke-static {v0, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 493
    new-instance v4, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2;

    invoke-direct {v4, p0, v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$2;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    invoke-virtual {v0, v4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 505
    :cond_12
    iget-object v4, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 507
    :cond_13
    iput-boolean v3, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->shouldAnimateChannelImageView:Z

    .line 508
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_14
    :goto_7
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_19

    .line 522
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$200(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 523
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 525
    :cond_15
    iget-object v0, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget v0, v0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    if-eqz v0, :cond_18

    if-eq v0, v2, :cond_17

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    goto :goto_8

    .line 530
    :cond_16
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 531
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 534
    :cond_17
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 535
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newUnseedPublishedDetailsDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 527
    :cond_18
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->newPublishedDetailsGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    :cond_19
    :goto_8
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v0}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$200(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 542
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactSelectionCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1b

    .line 544
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactSelectionCheckbox:Landroid/widget/CheckBox;

    iget-boolean p2, p2, Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;->selected:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_9

    .line 547
    :cond_1a
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->contactSelectionCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1b
    :goto_9
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredContactListViewModel$SelectableContact;",
            ">;)V"
        }
    .end annotation

    .line 293
    iget-boolean v0, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    .line 294
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    invoke-static {v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment;->access$000(Lio/olvid/messenger/fragments/FilteredContactListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredContactListFragment;

    iget-object v1, v1, Lio/olvid/messenger/fragments/FilteredContactListFragment;->filteredContactListViewModel:Lio/olvid/messenger/viewModels/FilteredContactListViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/FilteredContactListViewModel;->hasFilter()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 295
    :goto_0
    iput-boolean v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->showMyId:Z

    if-eqz p1, :cond_1

    .line 296
    iget-object v2, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 297
    new-instance v2, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$1;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;Ljava/util/List;ZZ)V

    invoke-static {v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 378
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    .line 379
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 381
    :cond_1
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->filteredContacts:Ljava/util/List;

    .line 382
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 258
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 396
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0055

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0064

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 399
    :goto_0
    new-instance v0, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;-><init>(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 258
    check-cast p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter;->onViewAttachedToWindow(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;)V
    .locals 1

    .line 409
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 410
    iget-boolean v0, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->shouldAnimateChannelImageView:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredContactListFragment$FilteredContactListAdapter$ContactViewHolder;->establishingChannelImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 412
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
