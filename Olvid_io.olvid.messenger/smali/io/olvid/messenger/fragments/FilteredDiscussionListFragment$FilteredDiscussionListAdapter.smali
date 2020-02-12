.class Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FilteredDiscussionListFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilteredDiscussionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;",
        ">;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TYPE_DIRECT:I = 0x1

.field private static final TYPE_GROUP:I = 0x2


# instance fields
.field private filteredDiscussions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;"
        }
    .end annotation
.end field

.field private final highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;


# direct methods
.method constructor <init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;)V
    .locals 4

    .line 216
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 217
    invoke-virtual {p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 p1, 0xa

    new-array p1, p1, [Landroid/text/style/BackgroundColorSpan;

    .line 218
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    const/4 p1, 0x0

    .line 219
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 220
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060019

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;)Ljava/util/List;
    .locals 0

    .line 207
    iget-object p0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->filteredDiscussions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 331
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->filteredDiscussions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 248
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->filteredDiscussions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;

    .line 250
    iget-boolean p1, p1, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 207
    check-cast p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->onBindViewHolder(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;I)V
    .locals 12

    .line 259
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->filteredDiscussions:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 260
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;

    .line 262
    iget-object v0, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    iget-object v0, v0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->filteredDiscussionListViewModel:Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel;->getFilterPatterns()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f1001da

    const/4 v2, 0x2

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 265
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v6, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-static {v6}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/regex/Pattern;

    .line 268
    iget-object v10, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    array-length v10, v10

    if-ne v8, v10, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 272
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 273
    iget-object v10, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    aget-object v10, v10, v8

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-interface {v5, v10, v11, v9, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 277
    :cond_2
    :goto_1
    iget-object v6, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-boolean v5, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    if-eqz v5, :cond_9

    .line 280
    iget-object v5, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 281
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 282
    new-instance v2, Landroid/text/SpannableString;

    iget-object v5, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-virtual {v5, v1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 284
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionGroupMembersTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 287
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    invoke-static {v2}, Lio/olvid/messenger/App;->unAccent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/regex/Pattern;

    .line 290
    iget-object v6, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    array-length v6, v6

    if-ne v4, v6, :cond_5

    goto :goto_3

    .line 293
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 294
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 295
    iget-object v6, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->highlightedSpans:[Landroid/text/style/BackgroundColorSpan;

    aget-object v6, v6, v4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {v1, v6, v7, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 299
    :cond_6
    :goto_3
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionGroupMembersTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 303
    :cond_7
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionTitleTextView:Landroid/widget/TextView;

    iget-object v5, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-boolean v0, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 306
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 307
    new-instance v2, Landroid/text/SpannableString;

    iget-object v5, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->this$0:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-virtual {v5, v1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 309
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionGroupMembersTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 311
    :cond_8
    iget-object v0, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->discussionGroupMembersTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->groupMemberNameList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_9
    :goto_4
    iget-boolean v0, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->isGroupDiscussion:Z

    if-eqz v0, :cond_a

    .line 316
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object p2, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    invoke-virtual {p1, p2}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    goto :goto_5

    .line 318
    :cond_a
    iget-object p1, p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;->initialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v0, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->byteIdentifier:[B

    iget-object p2, p2, Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;->title:Ljava/lang/String;

    invoke-static {p2}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/viewModels/FilteredDiscussionListViewModel$SearchableDiscussion;",
            ">;)V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->filteredDiscussions:Ljava/util/List;

    .line 227
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 240
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0066

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v1, p0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0067

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 243
    :goto_0
    new-instance v0, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter$DiscussionViewHolder;-><init>(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListAdapter;Landroid/view/View;I)V

    return-object v0
.end method
