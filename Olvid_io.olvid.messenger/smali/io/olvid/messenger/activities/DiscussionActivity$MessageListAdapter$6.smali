.class Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$6;
.super Ljava/lang/Object;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->onBindViewHolder(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field final synthetic val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)V
    .locals 0

    .line 2299
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$6;->this$1:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iput-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$6;->val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2302
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$6;->val$holder:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;->access$4100(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter$MessageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    .line 2303
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2304
    instance-of v1, v0, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2305
    check-cast v0, Landroid/text/Spannable;

    .line 2306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_2

    .line 2309
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 2310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 2312
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2313
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr p2, v5

    .line 2315
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    .line 2316
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr p2, v5

    .line 2318
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 2319
    invoke-virtual {v5, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    int-to-float v4, v4

    .line 2320
    invoke-virtual {v5, p2, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    .line 2322
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p2, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 2324
    array-length v0, p2

    if-eqz v0, :cond_2

    if-ne v1, v3, :cond_1

    .line 2326
    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    return v3

    :cond_2
    return v2
.end method
