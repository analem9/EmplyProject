.class public Lio/olvid/messenger/activities/DiscussionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DiscussionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lio/olvid/messenger/customClasses/MessageAttachmentAdapter$AttachmentLongClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;,
        Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;,
        Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;,
        Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;,
        Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;,
        Lio/olvid/messenger/activities/DiscussionActivity$MarkMessagesReadTask;,
        Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;,
        Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;,
        Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;,
        Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;,
        Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;
    }
.end annotation


# static fields
.field public static final BYTES_CONTACT_IDENTITY_INTENT_EXTRA:Ljava/lang/String; = "bytes_contact_identity"

.field public static final BYTES_GROUP_OWNER_AND_UID_INTENT_EXTRA:Ljava/lang/String; = "bytes_group_uid"

.field public static final BYTES_OWNED_IDENTITY_INTENT_EXTRA:Ljava/lang/String; = "bytes_owned_identity"

.field public static final DISCUSSION_ID_INTENT_EXTRA:Ljava/lang/String; = "discussion_id"

.field public static final PERMISSION_CAMERA:I = 0x12

.field private static final REPLY_MASK:J = 0x1L

.field private static final REQUEST_CODE_ATTACH_URI:I = 0x2

.field private static final REQUEST_CODE_IMAGE_CAPTURE:I = 0x3

.field public static final REQUEST_CODE_SAVE_ATTACHMENT:I = 0x4

.field public static final SAVE_FILE_ID_INTENT_EXTRA:Ljava/lang/String; = "file_id"

.field public static final SHORTCUT_PREFIX:Ljava/lang/String; = "discussion_"


# instance fields
.field private actionMode:Landroidx/appcompat/view/ActionMode;

.field private actionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private attachStuffGroup:Landroid/widget/LinearLayout;

.field private attachStuffGroupVisible:Z

.field private bottomMaskSpacer:Landroid/view/View;

.field private final cal1:Ljava/util/Calendar;

.field private final cal2:Ljava/util/Calendar;

.field private composeMessageCard:Landroid/view/ViewGroup;

.field private composeMessageReplyAttachmentCount:Landroid/widget/TextView;

.field private composeMessageReplyBody:Landroid/widget/TextView;

.field private composeMessageReplyClear:Landroid/widget/ImageView;

.field private composeMessageReplyGroup:Landroid/view/ViewGroup;

.field private composeMessageReplyMessageId:J

.field private composeMessageReplySenderName:Landroid/widget/TextView;

.field private final contactNamesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/databases/AppDatabase$BytesKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private discussionLockedGroup:Landroid/view/View;

.field private discussionNoChannelGroup:Landroid/view/View;

.field private discussionNoChannelImageView:Landroid/widget/ImageView;

.field private discussionNoChannelMessage:Landroid/widget/TextView;

.field private discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

.field private focusHugger:Landroid/view/View;

.field private hasCamera:Z

.field private headerAppearingAnimator:Landroid/animation/ValueAnimator;

.field private headerDisappearingAnimator:Landroid/animation/ValueAnimator;

.field private headerItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;

.field private locked:Z

.field private longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

.field private longClickedMessageHasAttachments:Z

.field private longClickedMessageId:J

.field private messageIdsToMarkAsRead:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

.field private messageListLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

.field private middleAnchorView:Landroid/view/View;

.field private newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

.field private newMessageEditTextFocused:Z

.field private newMessagesItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;

.field private noStatusIconWidth:F

.field photoFile:Ljava/io/File;

.field photoUri:Landroid/net/Uri;

.field private rootBackgroundImageView:Landroid/widget/ImageView;

.field private rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private scrollDownFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private scrolling:Z

.field private sendButton:Landroid/widget/ImageButton;

.field private sendReadReceipt:Z

.field private statusIconWidth:F

.field private toolbarClickedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 142
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrolling:Z

    .line 165
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroupVisible:Z

    .line 191
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->locked:Z

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->contactNamesHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 207
    iput v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->statusIconWidth:F

    .line 208
    iput v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->noStatusIconWidth:F

    .line 209
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendReadReceipt:Z

    .line 1661
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal1:Ljava/util/Calendar;

    .line 1662
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal2:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->toolbarClickedCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lio/olvid/messenger/activities/DiscussionActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 142
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->toolbarClickedCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootBackgroundImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lio/olvid/messenger/activities/DiscussionActivity;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditTextFocused:Z

    return p1
.end method

.method static synthetic access$1100(Lio/olvid/messenger/activities/DiscussionActivity;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendReadReceipt:Z

    return p0
.end method

.method static synthetic access$1102(Lio/olvid/messenger/activities/DiscussionActivity;Z)Z
    .locals 0

    .line 142
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendReadReceipt:Z

    return p1
.end method

.method static synthetic access$1200(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/List;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageIdsToMarkAsRead:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;

    return-object p0
.end method

.method static synthetic access$1500(Lio/olvid/messenger/activities/DiscussionActivity;)Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrolling:Z

    return p0
.end method

.method static synthetic access$1600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerAppearingAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1700(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerDisappearingAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1800(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNotFound()V

    return-void
.end method

.method static synthetic access$1900(Lio/olvid/messenger/activities/DiscussionActivity;JLandroid/content/Intent;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/messenger/activities/DiscussionActivity;->setDiscussionId(JLandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/customClasses/EmptyRecyclerView;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    return-object p0
.end method

.method static synthetic access$2000(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    return-object p0
.end method

.method static synthetic access$2102(Lio/olvid/messenger/activities/DiscussionActivity;J)J
    .locals 0

    .line 142
    iput-wide p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyMessageId:J

    return-wide p1
.end method

.method static synthetic access$2200(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyAttachmentCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyBody:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lio/olvid/messenger/activities/DiscussionActivity;)J
    .locals 2

    .line 142
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$2600(Lio/olvid/messenger/activities/DiscussionActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrollDownFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$2700(Lio/olvid/messenger/activities/DiscussionActivity;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->enableButton()V

    return-void
.end method

.method static synthetic access$300(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/viewModels/DiscussionViewModel;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    return-object p0
.end method

.method static synthetic access$3000(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode$Callback;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->actionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

    return-object p0
.end method

.method static synthetic access$3800(Lio/olvid/messenger/activities/DiscussionActivity;)Ljava/util/HashMap;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->contactNamesHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/activities/DiscussionActivity;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$402(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 142
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Message;J)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/messenger/activities/DiscussionActivity;->loadDraft(Lio/olvid/messenger/databases/entity/Message;J)V

    return-void
.end method

.method static synthetic access$5600(Lio/olvid/messenger/activities/DiscussionActivity;)F
    .locals 0

    .line 142
    iget p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->statusIconWidth:F

    return p0
.end method

.method static synthetic access$5700(Lio/olvid/messenger/activities/DiscussionActivity;)F
    .locals 0

    .line 142
    iget p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->noStatusIconWidth:F

    return p0
.end method

.method static synthetic access$5900(Lio/olvid/messenger/activities/DiscussionActivity;JIZZLandroid/view/View;)V
    .locals 0

    .line 142
    invoke-direct/range {p0 .. p6}, Lio/olvid/messenger/activities/DiscussionActivity;->messageLongClicked(JIZZLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/TextView;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6000(Lio/olvid/messenger/activities/DiscussionActivity;J)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p2}, Lio/olvid/messenger/activities/DiscussionActivity;->messageClicked(J)V

    return-void
.end method

.method static synthetic access$6400(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 142
    invoke-static {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->mimeGcd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/olvid/messenger/activities/DiscussionActivity;)Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/view/View;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelGroup:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lio/olvid/messenger/activities/DiscussionActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private discussionNotFound()V
    .locals 2

    .line 986
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->finish()V

    const v0, 0x7f1001f4

    const/4 v1, 0x0

    .line 987
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    return-void
.end method

.method private enableButton()V
    .locals 2

    .line 1339
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getTrimmedNewMessageText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->hasAttachments()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1342
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1340
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public static getShortcutInfo(J[B[BLjava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .locals 4

    .line 2592
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "forward_action"

    .line 2593
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2594
    const-class v1, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "forward_to"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "discussion_id"

    .line 2595
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 2596
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2598
    new-instance v1, Lio/olvid/messenger/customClasses/InitialView;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/messenger/customClasses/InitialView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 2600
    invoke-virtual {v1, p2}, Lio/olvid/messenger/customClasses/InitialView;->setGroup([B)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 2602
    invoke-static {p4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    new-array p2, p2, [B

    .line 2604
    invoke-static {p4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 2606
    :goto_0
    invoke-virtual {v1}, Lio/olvid/messenger/customClasses/InitialView;->getAdaptiveBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2613
    new-instance p3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discussion_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v1, p0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p3, p4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    .line 2615
    invoke-static {p2}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    .line 2616
    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "discussion_id"

    .line 938
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 939
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 940
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$11;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/olvid/messenger/activities/DiscussionActivity$11;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;JLandroid/content/Intent;)V

    invoke-static {v2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "bytes_owned_identity"

    .line 951
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bytes_contact_identity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 952
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 953
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 954
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$12;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/olvid/messenger/activities/DiscussionActivity$12;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;[B[BLandroid/content/Intent;)V

    invoke-static {v2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 965
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "bytes_group_uid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 967
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 968
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$13;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/olvid/messenger/activities/DiscussionActivity$13;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;[B[BLandroid/content/Intent;)V

    invoke-static {v2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 980
    :cond_2
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->finish()V

    const-string p1, "Missing discussion extras in intent."

    .line 981
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hideAttachStuff()V
    .locals 7

    .line 1167
    iget-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroupVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1168
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroupVisible:Z

    .line 1169
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 1170
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1171
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v3, 0x7f09006b

    const/4 v4, 0x3

    .line 1172
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 1174
    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 1175
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 1176
    invoke-virtual {v3, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 1178
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1179
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method private loadDraft(Lio/olvid/messenger/databases/entity/Message;J)V
    .locals 7

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 1348
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    const-wide/16 v1, 0x1

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 1351
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Message;->jsonReply:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1352
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Message;->getJsonMessage()Lio/olvid/messenger/databases/entity/Message$JsonMessage;

    move-result-object v1

    .line 1353
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v2

    .line 1354
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1355
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->contactNamesHashMap:Ljava/util/HashMap;

    new-instance v3, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v4

    invoke-virtual {v4}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplySenderName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1361
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplySenderName:Landroid/widget/TextView;

    const v3, 0x7f1001cc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1363
    :goto_0
    invoke-virtual {v1}, Lio/olvid/messenger/databases/entity/Message$JsonMessage;->getJsonReply()Lio/olvid/messenger/databases/entity/Message$JsonReply;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Message$JsonReply;->getSenderIdentifier()[B

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/customClasses/InitialView;->getTextColor([B)I

    move-result v0

    .line 1364
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplySenderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1366
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f080071

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1367
    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_2

    .line 1368
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x7f090242

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1369
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1370
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1371
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1374
    :cond_2
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$16;

    invoke-direct {v0, p0, v2, p1}, Lio/olvid/messenger/activities/DiscussionActivity$16;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Message$JsonReply;Lio/olvid/messenger/databases/entity/Message;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1416
    :cond_3
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 1419
    :cond_4
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_6

    .line 1424
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    iget-object p3, p1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object p2, p1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 1426
    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Message;->contentBody:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setSelection(I)V

    .line 1430
    :cond_6
    :goto_2
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->enableButton()V

    return-void
.end method

.method private markMessagesRead()V
    .locals 3

    .line 1328
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MarkMessagesReadTask;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageIdsToMarkAsRead:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-direct {v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity$MarkMessagesReadTask;-><init>([Ljava/lang/Long;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 1329
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageIdsToMarkAsRead:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private messageClicked(J)V
    .locals 1

    .line 1506
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->isSelectingForDeletion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0, p1, p2}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectMessageId(J)V

    :cond_0
    return-void
.end method

.method private messageLongClicked(JIZZLandroid/view/View;)V
    .locals 2

    .line 1456
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->isSelectingForDeletion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p3, p1, p2}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectMessageId(J)V

    goto/16 :goto_1

    .line 1461
    :cond_0
    iput-wide p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    .line 1462
    iput-boolean p5, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageHasAttachments:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1465
    invoke-virtual {p6, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x1

    .line 1466
    aget p5, p1, p2

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 1467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v0, 0x2

    .line 1468
    div-int/lit8 v1, v1, 0x3

    if-le p5, v1, :cond_1

    aget p1, p1, p2

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_1

    .line 1469
    iget-object p6, p0, Lio/olvid/messenger/activities/DiscussionActivity;->middleAnchorView:Landroid/view/View;

    .line 1472
    :cond_1
    new-instance p1, Landroid/widget/PopupMenu;

    new-instance p5, Landroid/view/ContextThemeWrapper;

    const v0, 0x7f1102d8

    invoke-direct {p5, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v0, 0x800005

    invoke-direct {p1, p5, p6, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    const p5, 0x7f0d0016

    const p6, 0x7f0d0015

    const v0, 0x7f0d0018

    if-eqz p3, :cond_5

    if-eq p3, p2, :cond_2

    const p2, 0x7f0d0019

    .line 1497
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0d0017

    .line 1487
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1488
    iget-boolean p2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->locked:Z

    if-nez p2, :cond_3

    .line 1489
    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->inflate(I)V

    :cond_3
    if-nez p4, :cond_4

    .line 1492
    invoke-virtual {p1, p5}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1494
    :cond_4
    invoke-virtual {p1, p6}, Landroid/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    .line 1475
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_6

    const p2, 0x800003

    .line 1476
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setGravity(I)V

    .line 1478
    :cond_6
    iget-boolean p2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->locked:Z

    if-nez p2, :cond_7

    .line 1479
    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->inflate(I)V

    :cond_7
    if-nez p4, :cond_8

    .line 1482
    invoke-virtual {p1, p5}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1484
    :cond_8
    invoke-virtual {p1, p6}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1500
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1501
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    :goto_1
    return-void
.end method

.method private static mimeGcd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 2698
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "/"

    .line 2701
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    .line 2702
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2703
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/*"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "*/*"

    return-object p0
.end method

.method private saveDraft()V
    .locals 5

    .line 1333
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1334
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v3}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getTrimmedNewMessageText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v4}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDraftMessage()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/Message;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/olvid/messenger/activities/DiscussionActivity$SaveDraftTask;-><init>(JLjava/lang/String;Lio/olvid/messenger/databases/entity/Message;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendMessage()V
    .locals 4

    .line 1317
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1318
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->markMessagesRead()V

    .line 1319
    new-instance v0, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    .line 1320
    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getTrimmedNewMessageText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    .line 1321
    invoke-virtual {v2}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/messenger/databases/tasks/PostMessageInDiscussionTask;-><init>(Ljava/lang/String;J)V

    .line 1319
    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    .line 1323
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setDiscussionId(JLandroid/content/Intent;)V
    .locals 3

    .line 991
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->setCurrentShowingDiscussionId(Ljava/lang/Long;)V

    .line 992
    invoke-static {p1, p2}, Lio/olvid/messenger/AndroidNotificationManager;->clearReceivedMessageNotification(J)V

    .line 993
    invoke-static {p1, p2}, Lio/olvid/messenger/AndroidNotificationManager;->clearGroupNotification(J)V

    .line 995
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 996
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->markMessagesRead()V

    .line 997
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->saveDraft()V

    .line 1000
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->setDiscussionId(Ljava/lang/Long;)V

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    const-string v0, "android.remoteInputDraft"

    .line 1005
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_2

    .line 1008
    new-instance v0, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/olvid/messenger/databases/tasks/ReplaceDiscussionDraftTask;-><init>(JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private showAttachStuff()V
    .locals 6

    .line 1184
    iget-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroupVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1185
    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroupVisible:Z

    .line 1186
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, -0x3cf90000    # -135.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 1187
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1188
    iget-object v3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v3, 0x7f09006b

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 1189
    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 1191
    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 1192
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 1193
    invoke-virtual {v3, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 1195
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1196
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method private takePicture()V
    .locals 7

    .line 1201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1202
    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoUri:Landroid/net/Uri;

    .line 1203
    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoFile:Ljava/io/File;

    .line 1204
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1205
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "camera_pictures"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1206
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "yyyy-MM-dd@HHmmss"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoFile:Ljava/io/File;

    .line 1209
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1210
    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "io.olvid.messenger.PICTURE_FILES_PROVIDER"

    .line 1213
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoFile:Ljava/io/File;

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoUri:Landroid/net/Uri;

    const-string v1, "output"

    .line 1216
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 1217
    invoke-virtual {p0, v0, v1}, Lio/olvid/messenger/activities/DiscussionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1219
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating photo capture file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateShortcut(Lio/olvid/messenger/databases/entity/Discussion;)V
    .locals 5

    .line 2620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 2621
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    if-eqz v0, :cond_0

    .line 2623
    iget-wide v1, p0, Lio/olvid/messenger/databases/entity/Discussion;->id:J

    iget-object v3, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    iget-object v4, p0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    iget-object p0, p0, Lio/olvid/messenger/databases/entity/Discussion;->title:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getShortcutInfo(J[B[BLjava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    .line 2624
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2625
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1526
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->setNewMessageText(Ljava/lang/CharSequence;)V

    .line 1527
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->enableButton()V

    return-void
.end method

.method public attachmentLongClicked(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;Landroid/view/View;)V
    .locals 3

    .line 1534
    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    .line 1535
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f1102d8

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1536
    iget-object p2, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {p2}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7f0d000d

    .line 1537
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    .line 1539
    :cond_0
    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget p1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    const p1, 0x7f0d000e

    .line 1540
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0d000f

    .line 1542
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1545
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1546
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$onCreate$0$DiscussionActivity(Landroid/view/View;)V
    .locals 1

    .line 302
    new-instance p1, Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity$ClearDraftReplyTask;-><init>(Ljava/lang/Long;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$DiscussionActivity(Landroid/view/View;)V
    .locals 4

    .line 303
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyMessageId:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->requestScrollToMessageId(JZZ)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$DiscussionActivity()V
    .locals 2

    .line 308
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$DiscussionActivity(I)V
    .locals 3

    .line 324
    iget-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrolling:Z

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 325
    :goto_1
    iput-boolean v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrolling:Z

    .line 326
    iget-boolean v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrolling:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->invalidate()V

    :cond_2
    if-ne p1, v1, :cond_3

    .line 329
    iget-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditTextFocused:Z

    if-eqz p1, :cond_3

    .line 330
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->focusHugger:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return-void
.end method

.method public synthetic lambda$onCreate$4$DiscussionActivity(Ljava/util/HashMap;)V
    .locals 1

    .line 577
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->contactNamesHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 578
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->contactNamesHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 579
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method notTheSameDay(JJ)Z
    .locals 1

    .line 1665
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal1:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1666
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal2:Ljava/util/Calendar;

    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1667
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal1:Ljava/util/Calendar;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal2:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal1:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->cal2:Ljava/util/Calendar;

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    return p3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1245
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne p2, v1, :cond_6

    .line 1284
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1286
    new-instance p2, Lio/olvid/messenger/activities/DiscussionActivity$15;

    invoke-direct {p2, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$15;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/net/Uri;)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_1
    if-ne p2, v1, :cond_6

    .line 1276
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoUri:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 1277
    new-instance p2, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->photoFile:Ljava/io/File;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p2, p1, p3, v0, v1}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;-><init>(Landroid/net/Uri;Ljava/io/File;J)V

    invoke-static {p2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_2
    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_6

    .line 1250
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1251
    new-instance p1, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p3}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;-><init>(Landroid/net/Uri;J)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1253
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1255
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 p3, 0x0

    .line 1257
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 1258
    invoke-virtual {p1, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 1259
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1260
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1262
    :cond_4
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    if-eq p3, p1, :cond_5

    const p1, 0x7f1001e8

    const/4 p3, 0x1

    .line 1263
    invoke-static {p1, p3}, Lio/olvid/messenger/App;->toast(II)V

    .line 1265
    :cond_5
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 1266
    new-instance p3, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p3, p2, v0, v1}, Lio/olvid/messenger/databases/tasks/AddFyleToDraftFromUriTask;-><init>(Landroid/net/Uri;J)V

    invoke-static {p3}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1049
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    const-string v3, "android.intent.category.OPENABLE"

    const-string v4, "android.intent.action.GET_CONTENT"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1145
    :sswitch_0
    iget-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->hasCamera:Z

    if-eqz p1, :cond_1

    const-string p1, "android.permission.CAMERA"

    .line 1146
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x12

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1149
    :cond_0
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->takePicture()V

    goto :goto_0

    :cond_1
    const p1, 0x7f1001f2

    const/4 v0, 0x0

    .line 1152
    invoke-static {p1, v0}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_0

    .line 1123
    :sswitch_1
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {p1}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1124
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-static {v0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->access$1300(Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 1118
    :sswitch_2
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->sendMessage()V

    .line 1119
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->hideAttachStuff()V

    goto :goto_0

    .line 1157
    :sswitch_3
    iget-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroupVisible:Z

    if-eqz p1, :cond_2

    .line 1158
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->hideAttachStuff()V

    goto :goto_0

    .line 1160
    :cond_2
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->showAttachStuff()V

    goto :goto_0

    .line 1137
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "image/*"

    .line 1138
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1139
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1140
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 1141
    invoke-virtual {p0, p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1129
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "*/*"

    .line 1130
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p0, p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090067 -> :sswitch_5
        0x7f090068 -> :sswitch_4
        0x7f090069 -> :sswitch_3
        0x7f0900cf -> :sswitch_2
        0x7f09011f -> :sswitch_1
        0x7f090299 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 214
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/DiscussionViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    const p1, 0x7f0c001e

    .line 218
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->setContentView(I)V

    const p1, 0x7f090122

    .line 220
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 221
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 223
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 227
    :cond_0
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$1;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41d00000    # 26.0f

    .line 237
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->statusIconWidth:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 238
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->noStatusIconWidth:F

    const v0, 0x7f0900c9

    .line 240
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/customClasses/PlaintextEditText;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    .line 241
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    invoke-virtual {v0, p0}, Lio/olvid/messenger/customClasses/PlaintextEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$2;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/DiscussionActivity$2;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0900cf

    .line 257
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendButton:Landroid/widget/ImageButton;

    .line 258
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->sendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090067

    .line 260
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 261
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090068

    .line 263
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 264
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.camera"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->hasCamera:Z

    const v0, 0x7f090299

    .line 268
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 269
    iget-boolean v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->hasCamera:Z

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 272
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    const v0, 0x7f09011e

    .line 275
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f09011d

    .line 276
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootBackgroundImageView:Landroid/widget/ImageView;

    const v0, 0x7f09006b

    .line 278
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroup:Landroid/widget/LinearLayout;

    const v0, 0x7f090069

    .line 279
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 280
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014e

    .line 282
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->focusHugger:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->focusHugger:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageIdsToMarkAsRead:Ljava/util/List;

    const v0, 0x7f0900c8

    .line 288
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageCard:Landroid/view/ViewGroup;

    const v0, 0x7f090119

    .line 289
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionLockedGroup:Landroid/view/View;

    const v0, 0x7f090082

    .line 290
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->bottomMaskSpacer:Landroid/view/View;

    const v0, 0x7f09011a

    .line 292
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelGroup:Landroid/view/View;

    const v0, 0x7f09011b

    .line 293
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelImageView:Landroid/widget/ImageView;

    const v0, 0x7f09011c

    .line 294
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelMessage:Landroid/widget/TextView;

    const v0, 0x7f0900cd

    .line 296
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0900ce

    .line 297
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplySenderName:Landroid/widget/TextView;

    const v0, 0x7f0900cb

    .line 298
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyBody:Landroid/widget/TextView;

    const v0, 0x7f0900ca

    .line 299
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyAttachmentCount:Landroid/widget/TextView;

    const v0, 0x7f0900cc

    .line 300
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyClear:Landroid/widget/ImageView;

    .line 302
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyClear:Landroid/widget/ImageView;

    new-instance v2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$t_dYNSsN3gd6Ni8HWz9HkDtHw3c;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$t_dYNSsN3gd6Ni8HWz9HkDtHw3c;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageReplyGroup:Landroid/view/ViewGroup;

    new-instance v2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$afBrC4zBrh3gXeRjGVRuMK-_Jg4;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$afBrC4zBrh3gXeRjGVRuMK-_Jg4;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ce

    .line 306
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 307
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$X_RNttUVgs25xkQZ2A-3Lsdrok0;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$X_RNttUVgs25xkQZ2A-3Lsdrok0;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-direct {v0, p0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    .line 312
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 313
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 314
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 315
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0901cd

    .line 317
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 320
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$MessageListScrollListener;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    .line 321
    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    invoke-virtual {v2, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 323
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    new-instance v2, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$9mZntj-QuU2H4bexWQiW76Sz52o;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$9mZntj-QuU2H4bexWQiW76Sz52o;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addOnScrollStateChangedListener(Lio/olvid/messenger/customClasses/EmptyRecyclerView$OnScrollStateChangedListener;)V

    const v0, 0x7f0902d0

    .line 365
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$3;

    invoke-direct {v3, p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity$3;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const v0, 0x7f09011f

    .line 374
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrollDownFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 375
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->scrollDownFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d8

    .line 377
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->middleAnchorView:Landroid/view/View;

    .line 380
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageCard:Landroid/view/ViewGroup;

    const v2, 0x7f090077

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    .line 381
    new-instance v2, Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;

    invoke-direct {v2, p0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$NewMessageAttachmentAdapter;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroid/content/Context;)V

    .line 383
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 384
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 385
    invoke-virtual {v0, v3}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 386
    invoke-virtual {v0, v2}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 387
    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->setHideIfEmpty(Z)V

    .line 388
    new-instance v1, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentSpaceItemDecoration;

    invoke-direct {v1, p0}, Lio/olvid/messenger/customClasses/DraftAttachmentAdapter$AttachmentSpaceItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 391
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$4;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$4;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->actionModeCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 454
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDraftMessageFyles()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 456
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDraftMessage()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$5;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/DiscussionActivity$5;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 477
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getSelectedMessageIds()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    iget-object v1, v1, Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;->selectedMessageIdsObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 479
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussion()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$6;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$6;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 519
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionContacts()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/DiscussionActivity$7;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$7;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 574
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getMessages()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageListAdapter:Lio/olvid/messenger/activities/DiscussionActivity$MessageListAdapter;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 576
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$Uc66Fo0DVIwHHYqFTNfc8CRRCzE;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/-$$Lambda$DiscussionActivity$Uc66Fo0DVIwHHYqFTNfc8CRRCzE;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 582
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionCustomization()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$8;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$8;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 642
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerAppearingAnimator:Landroid/animation/ValueAnimator;

    .line 643
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerAppearingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 644
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerAppearingAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$9;

    invoke-direct {v3, p0}, Lio/olvid/messenger/activities/DiscussionActivity$9;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [I

    .line 650
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerDisappearingAnimator:Landroid/animation/ValueAnimator;

    .line 651
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerDisappearingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 652
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerDisappearingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 653
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerDisappearingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$10;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/DiscussionActivity$10;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 659
    new-instance p1, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessagesItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;

    .line 660
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getUnreadCountAndFirstMessage()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessagesItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 661
    new-instance p1, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;

    .line 662
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessagesItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$NewMessagesItemDecoration;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 663
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->messageRecyclerView:Lio/olvid/messenger/customClasses/EmptyRecyclerView;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->headerItemDecoration:Lio/olvid/messenger/activities/DiscussionActivity$HeaderItemDecoration;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 665
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->handleIntent(Landroid/content/Intent;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1054
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussion()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Discussion;

    if-eqz v0, :cond_2

    .line 1056
    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesGroupOwnerAndUid:[B

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Discussion;->bytesContactIdentity:[B

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1061
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1062
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1551
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f10002d

    const v2, 0x7f10003d

    const v3, 0x7f1100e9

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v4

    .line 1591
    :pswitch_1
    new-instance p1, Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;

    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity$ShareSelectedMessageTask;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Long;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return v5

    .line 1571
    :pswitch_2
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    if-eqz p1, :cond_0

    .line 1572
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1574
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f1001e7

    .line 1575
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v5

    .line 1619
    :pswitch_3
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->selectMessageId(J)V

    return v5

    .line 1580
    :pswitch_4
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object p1, p1, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1581
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 1582
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    .line 1583
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    const-string v1, "android.intent.extra.TITLE"

    .line 1584
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v0, v0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyle:Lio/olvid/messenger/databases/entity/Fyle;

    iget-wide v0, v0, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    const-string v2, "file_id"

    .line 1585
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x4

    .line 1586
    invoke-virtual {p0, p1, v0}, Lio/olvid/messenger/activities/DiscussionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return v5

    .line 1599
    :pswitch_5
    new-instance p1, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;

    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v2}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getRawNewMessageText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lio/olvid/messenger/activities/DiscussionActivity$SetDraftReplyTask;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return v5

    .line 1567
    :pswitch_6
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    invoke-static {p1}, Lio/olvid/messenger/App;->openFyle(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V

    return v5

    .line 1623
    :pswitch_7
    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    iget-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageHasAttachments:Z

    invoke-static {p0, v0, v1, p1}, Lio/olvid/messenger/App;->openMessageDetails(Landroid/content/Context;JZ)V

    return v5

    .line 1603
    :pswitch_8
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f100090

    .line 1604
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1605
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x7f0f0000

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$18;

    invoke-direct {v3, p0}, Lio/olvid/messenger/activities/DiscussionActivity$18;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    .line 1606
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1614
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1615
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v5

    .line 1553
    :pswitch_9
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10008c

    .line 1554
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f100072

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedFyleAndStatus:Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object v7, v7, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    aput-object v7, v6, v4

    .line 1555
    invoke-virtual {p0, v3, v6}, Lio/olvid/messenger/activities/DiscussionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v3, Lio/olvid/messenger/activities/DiscussionActivity$17;

    invoke-direct {v3, p0}, Lio/olvid/messenger/activities/DiscussionActivity$17;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;)V

    .line 1556
    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1562
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1563
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v5

    .line 1595
    :pswitch_a
    new-instance p1, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;

    iget-wide v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->longClickedMessageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/olvid/messenger/activities/DiscussionActivity$CopySelectedMessageTask;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Long;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return v5

    :pswitch_data_0
    .packed-switch 0x7f09021f
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 933
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 934
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1071
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1109
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1092
    :sswitch_0
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1093
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussion()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Discussion;

    if-eqz p1, :cond_1

    .line 1095
    new-instance v0, Lio/olvid/messenger/activities/DiscussionActivity$14;

    invoke-direct {v0, p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity$14;-><init>(Lio/olvid/messenger/activities/DiscussionActivity;Lio/olvid/messenger/databases/entity/Discussion;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f10020a

    const/4 v0, 0x0

    .line 1104
    invoke-static {p1, v0}, Lio/olvid/messenger/App;->toast(II)V

    :cond_1
    :goto_0
    return v1

    .line 1083
    :sswitch_1
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1084
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1085
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lio/olvid/messenger/activities/DiscussionSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "discussion_id"

    .line 1086
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/DiscussionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return v1

    .line 1077
    :sswitch_2
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->toolbarClickedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1078
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return v1

    .line 1073
    :sswitch_3
    invoke-virtual {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->onBackPressed()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f09003d -> :sswitch_2
        0x7f09004b -> :sswitch_1
        0x7f09004c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .line 1041
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 1042
    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->setCurrentShowingDiscussionId(Ljava/lang/Long;)V

    .line 1043
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->markMessagesRead()V

    .line 1044
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->saveDraft()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x12

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 1229
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->takePicture()V

    goto :goto_0

    :cond_1
    const p1, 0x7f1001ed

    .line 1231
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1014
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 1015
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    if-eqz v0, :cond_1

    .line 1017
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getRawNewMessageText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getRawNewMessageText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    iget-object v1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getRawNewMessageText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setSelection(I)V

    goto :goto_0

    .line 1021
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->newMessageEditText:Lio/olvid/messenger/customClasses/PlaintextEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/customClasses/PlaintextEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1027
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->enableButton()V

    .line 1028
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1029
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/messenger/AndroidNotificationManager;->setCurrentShowingDiscussionId(Ljava/lang/Long;)V

    .line 1030
    iget-object v0, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionViewModel:Lio/olvid/messenger/viewModels/DiscussionViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/DiscussionViewModel;->getDiscussionId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/olvid/messenger/AndroidNotificationManager;->clearReceivedMessageNotification(J)V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1036
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setLocked(Z)V
    .locals 3

    .line 1434
    iput-boolean p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->locked:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1436
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageCard:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1437
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionNoChannelGroup:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    invoke-direct {p0}, Lio/olvid/messenger/activities/DiscussionActivity;->hideAttachStuff()V

    .line 1439
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 1440
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionLockedGroup:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->bottomMaskSpacer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->rootConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    goto :goto_0

    .line 1444
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->composeMessageCard:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1445
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1446
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->attachStuffFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 1447
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->discussionLockedGroup:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object p1, p0, Lio/olvid/messenger/activities/DiscussionActivity;->bottomMaskSpacer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
