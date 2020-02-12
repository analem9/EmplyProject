.class public Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field notificationDots:[Landroid/view/View;

.field textViews:[Landroid/widget/TextView;

.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const/4 p1, 0x1

    .line 255
    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 256
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->notificationDots:[Landroid/view/View;

    .line 257
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result p1

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->textViews:[Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;I)Landroid/view/View;
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getPageTabCustomView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getPageTabCustomView(I)Landroid/view/View;
    .locals 4

    .line 327
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09028f

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 329
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->notificationDots:[Landroid/view/View;

    const v3, 0x7f09028e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, p1

    .line 331
    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->textViews:[Landroid/widget/TextView;

    aput-object v1, v2, p1

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 275
    new-instance p1, Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/InvitationListFragment;-><init>()V

    return-object p1

    .line 271
    :cond_0
    new-instance p1, Lio/olvid/messenger/fragments/GroupListFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/GroupListFragment;-><init>()V

    return-object p1

    .line 268
    :cond_1
    new-instance p1, Lio/olvid/messenger/fragments/ContactListFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/ContactListFragment;-><init>()V

    return-object p1

    .line 265
    :cond_2
    new-instance p1, Lio/olvid/messenger/fragments/DiscussionListFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/DiscussionListFragment;-><init>()V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 318
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const v0, 0x7f1001c7

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const v0, 0x7f1001c6

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 312
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const v0, 0x7f1001c4

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 309
    :cond_3
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    const v0, 0x7f1001c5

    invoke-virtual {p1, v0}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method hideNotificationDot(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 343
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->notificationDots:[Landroid/view/View;

    aget-object p1, v0, p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method highlightTab(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 350
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne v0, p1, :cond_1

    .line 355
    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 357
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->textViews:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const v2, -0x494036

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 283
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 284
    instance-of v0, p1, Lio/olvid/messenger/activities/MainActivity$FabDelegate;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {v0}, Lio/olvid/messenger/activities/MainActivity;->access$300(Lio/olvid/messenger/activities/MainActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lio/olvid/messenger/activities/MainActivity$FabDelegate;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 288
    instance-of p2, p1, Lio/olvid/messenger/fragments/ContactListFragment;

    if-eqz p2, :cond_2

    .line 289
    iget-object p2, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/fragments/ContactListFragment;

    invoke-static {p2, v0}, Lio/olvid/messenger/activities/MainActivity;->access$402(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/messenger/fragments/ContactListFragment;)Lio/olvid/messenger/fragments/ContactListFragment;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 292
    instance-of p2, p1, Lio/olvid/messenger/fragments/InvitationListFragment;

    if-eqz p2, :cond_2

    .line 293
    iget-object p2, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->this$0:Lio/olvid/messenger/activities/MainActivity;

    move-object v0, p1

    check-cast v0, Lio/olvid/messenger/fragments/InvitationListFragment;

    invoke-static {p2, v0}, Lio/olvid/messenger/activities/MainActivity;->access$502(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/fragments/InvitationListFragment;

    :cond_2
    :goto_0
    return-object p1
.end method

.method showNotificationDot(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 336
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->notificationDots:[Landroid/view/View;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
