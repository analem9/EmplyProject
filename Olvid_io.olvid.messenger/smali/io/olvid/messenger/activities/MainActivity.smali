.class public Lio/olvid/messenger/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/MainActivity$FabDelegate;,
        Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;,
        Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;
    }
.end annotation


# static fields
.field public static final CONTACTS_TAB:I = 0x1

.field public static final DISCUSSIONS_TAB:I = 0x0

.field public static final FORWARD_ACTION:Ljava/lang/String; = "forward_action"

.field public static final FORWARD_TO_INTENT_EXTRA:Ljava/lang/String; = "forward_to"

.field public static final GROUPS_TAB:I = 0x2

.field public static final INVITATIONS_TAB:I = 0x3

.field private static final INVITATION_URI_KEY:Ljava/lang/String; = "invitation_uri"

.field private static final PERMISSION_CAMERA_FOR_CONFIGURATION:I = 0x3ae

.field public static final PERMISSION_CAMERA_FOR_INVITATION:I = 0x13

.field public static final REQUEST_CODE_IMPORT_QR_CODE_IMAGE:I = 0x11

.field public static final TAB_TO_SHOW_INTENT_EXTRA:Ljava/lang/String; = "tab_to_show"

.field public static final UPDATE_API_KEY_ACTION:Ljava/lang/String; = "update_api_key_action"

.field private static final USER_DIALOG_BACKGROUND_RESTRICTED:Ljava/lang/String; = "background_restricted"

.field private static final USER_DIALOG_BATTERY_OPTIMIZATION:Ljava/lang/String; = "battery_optimization"

.field private static final USER_DIALOG_GOOGLE_APIS:Ljava/lang/String; = "google_apis"

.field private static final USER_DIALOG_OLVID_NOT_FREE:Ljava/lang/String; = "olvid_not_freee"

.field public static dialogsLoaded:Z = false

.field private static final dialogsToShow:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contactAdditionBottomSheetDialogFragment:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

.field private contactListFragment:Lio/olvid/messenger/fragments/ContactListFragment;

.field private dialogShowing:Z

.field private fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private fabDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lio/olvid/messenger/activities/MainActivity$FabDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private fabSetterPageChangeListener:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

.field private invitationDialogShowing:Z

.field private invitationListFragment:Lio/olvid/messenger/fragments/InvitationListFragment;

.field private invitationUri:Landroid/net/Uri;

.field private showNextDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private tabsPagerAdapter:Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 366
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lio/olvid/messenger/activities/MainActivity;->dialogsToShow:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fabDelegates:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lio/olvid/messenger/activities/MainActivity;->dialogShowing:Z

    .line 367
    new-instance v0, Lio/olvid/messenger/activities/MainActivity$6;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MainActivity$6;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->showNextDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/MainActivity;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lio/olvid/messenger/activities/MainActivity;->showDialogs()V

    return-void
.end method

.method static synthetic access$200(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;
    .locals 0

    .line 97
    iget-object p0, p0, Lio/olvid/messenger/activities/MainActivity;->tabsPagerAdapter:Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/activities/MainActivity;)Ljava/util/HashMap;
    .locals 0

    .line 97
    iget-object p0, p0, Lio/olvid/messenger/activities/MainActivity;->fabDelegates:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/fragments/ContactListFragment;
    .locals 0

    .line 97
    iget-object p0, p0, Lio/olvid/messenger/activities/MainActivity;->contactListFragment:Lio/olvid/messenger/fragments/ContactListFragment;

    return-object p0
.end method

.method static synthetic access$402(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/messenger/fragments/ContactListFragment;)Lio/olvid/messenger/fragments/ContactListFragment;
    .locals 0

    .line 97
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->contactListFragment:Lio/olvid/messenger/fragments/ContactListFragment;

    return-object p1
.end method

.method static synthetic access$500(Lio/olvid/messenger/activities/MainActivity;)Lio/olvid/messenger/fragments/InvitationListFragment;
    .locals 0

    .line 97
    iget-object p0, p0, Lio/olvid/messenger/activities/MainActivity;->invitationListFragment:Lio/olvid/messenger/fragments/InvitationListFragment;

    return-object p0
.end method

.method static synthetic access$502(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/messenger/fragments/InvitationListFragment;)Lio/olvid/messenger/fragments/InvitationListFragment;
    .locals 0

    .line 97
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->invitationListFragment:Lio/olvid/messenger/fragments/InvitationListFragment;

    return-object p1
.end method

.method static synthetic access$602(Lio/olvid/messenger/activities/MainActivity;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity;->dialogShowing:Z

    return p1
.end method

.method static synthetic access$700(Lio/olvid/messenger/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 97
    iget-object p0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$802(Lio/olvid/messenger/activities/MainActivity;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lio/olvid/messenger/activities/MainActivity;->invitationDialogShowing:Z

    return p1
.end method

.method static synthetic access$900(Lio/olvid/messenger/activities/MainActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 97
    iget-object p0, p0, Lio/olvid/messenger/activities/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 602
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 603
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "update_api_key_action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "forward_action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "forward_to"

    .line 625
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 627
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 629
    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 633
    :cond_2
    invoke-virtual {p0, v2}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 617
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 620
    invoke-direct {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->updateApiKey(Landroid/net/Uri;)V

    goto :goto_2

    .line 609
    :cond_4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 612
    invoke-direct {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->processQRCodeData(Landroid/net/Uri;)V

    goto :goto_2

    .line 605
    :cond_5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_2
    const-string v0, "tab_to_show"

    .line 640
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 642
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c84cf10 -> :sswitch_3
        -0x45f16402 -> :sswitch_2
        -0x45ed2f16 -> :sswitch_1
        0x25539591 -> :sswitch_0
    .end sparse-switch
.end method

.method private processQRCodeData(Landroid/net/Uri;)V
    .locals 7

    .line 734
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 737
    :cond_0
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->invitationUri:Landroid/net/Uri;

    const/4 v0, 0x1

    const v1, 0x7f10020d

    const/4 v2, 0x0

    .line 740
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    sget-object v3, Lio/olvid/messenger/activities/ObvLinkActivity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 742
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 743
    invoke-static {p1}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->fromUrlRepresentation(Ljava/lang/String;)Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 784
    invoke-static {v1, v2}, Lio/olvid/messenger/App;->toast(II)V

    return-void

    .line 749
    :cond_1
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v3

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getBytesIdentity()[B

    move-result-object v4

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v3, v4, v5}, Lio/olvid/engine/engine/Engine;->isContactOfOwnedIdentity([B[B)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 751
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    .line 753
    :goto_0
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    const v5, 0x7f1100e9

    invoke-direct {v4, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v3, :cond_2

    const v3, 0x7f10007c

    new-array v5, v0, [Ljava/lang/Object;

    .line 754
    iget-object v6, p1, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p0, v3, v5}, Lio/olvid/messenger/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const v3, 0x7f10007d

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p1, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p0, v3, v5}, Lio/olvid/messenger/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f10009b

    .line 755
    invoke-virtual {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f10003f

    new-instance v6, Lio/olvid/messenger/activities/MainActivity$14;

    invoke-direct {v6, p0, p1}, Lio/olvid/messenger/activities/MainActivity$14;-><init>(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;)V

    .line 756
    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f10002d

    const/4 v5, 0x0

    .line 768
    invoke-virtual {p1, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 770
    new-instance v3, Lio/olvid/messenger/activities/MainActivity$15;

    invoke-direct {v3, p0}, Lio/olvid/messenger/activities/MainActivity$15;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 776
    iput-boolean v0, p0, Lio/olvid/messenger/activities/MainActivity;->invitationDialogShowing:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    :try_start_3
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    goto :goto_4

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    goto :goto_5

    :catch_2
    move-exception p1

    const/4 v0, 0x0

    .line 781
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_4

    .line 784
    :goto_4
    invoke-static {v1, v2}, Lio/olvid/messenger/App;->toast(II)V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    :goto_5
    if-nez v0, :cond_5

    invoke-static {v1, v2}, Lio/olvid/messenger/App;->toast(II)V

    .line 786
    :cond_5
    throw p1
.end method

.method private declared-synchronized showDialogs()V
    .locals 12

    monitor-enter p0

    .line 380
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    sget-boolean v1, Lio/olvid/messenger/activities/MainActivity;->dialogsLoaded:Z

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    .line 383
    sput-boolean v4, Lio/olvid/messenger/activities/MainActivity;->dialogsLoaded:Z

    .line 384
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user_dialog_hide_google_apis"

    .line 385
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    sget-object v1, Lio/olvid/messenger/activities/MainActivity;->dialogsToShow:Ljava/util/Deque;

    const-string v5, "google_apis"

    invoke-interface {v1, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 396
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_1

    const-string v1, "activity"

    .line 397
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "user_dialog_hide_background_restricted"

    .line 399
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    sget-object v1, Lio/olvid/messenger/activities/MainActivity;->dialogsToShow:Ljava/util/Deque;

    const-string v5, "background_restricted"

    invoke-interface {v1, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 405
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    const-string v1, "power"

    .line 406
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "user_dialog_hide_battery_optimization"

    .line 408
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    sget-object v1, Lio/olvid/messenger/activities/MainActivity;->dialogsToShow:Ljava/util/Deque;

    const-string v5, "battery_optimization"

    invoke-interface {v1, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 416
    :cond_2
    iget-boolean v1, p0, Lio/olvid/messenger/activities/MainActivity;->dialogShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 417
    monitor-exit p0

    return-void

    .line 420
    :cond_3
    :try_start_1
    sget-object v1, Lio/olvid/messenger/activities/MainActivity;->dialogsToShow:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    .line 422
    monitor-exit p0

    return-void

    .line 425
    :cond_4
    :try_start_2
    iput-boolean v4, p0, Lio/olvid/messenger/activities/MainActivity;->dialogShowing:Z

    const/4 v5, -0x1

    .line 426
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "battery_optimization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "google_apis"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :sswitch_2
    const-string v3, "background_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "olvid_not_freee"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const v1, 0x7f10003d

    const v5, 0x7f1100e9

    const v6, 0x7f0900a4

    const v9, 0x7f090109

    const v10, 0x7f0c0046

    const/4 v11, 0x0

    if-eqz v3, :cond_9

    if-eq v3, v4, :cond_8

    if-eq v3, v8, :cond_7

    if-eq v3, v7, :cond_6

    goto/16 :goto_2

    .line 516
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_a

    .line 517
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 518
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10006f

    .line 519
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 520
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 521
    new-instance v4, Lio/olvid/messenger/activities/MainActivity$11;

    invoke-direct {v4, p0, v0}, Lio/olvid/messenger/activities/MainActivity$11;-><init>(Lio/olvid/messenger/activities/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 530
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10008a

    .line 531
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 532
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 533
    invoke-virtual {v2, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10002c

    .line 534
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity;->showNextDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 535
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 538
    new-instance v1, Lio/olvid/messenger/activities/MainActivity$12;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/MainActivity$12;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 555
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 472
    :cond_7
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10006e

    .line 474
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 475
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 476
    new-instance v4, Lio/olvid/messenger/activities/MainActivity$9;

    invoke-direct {v4, p0, v0}, Lio/olvid/messenger/activities/MainActivity$9;-><init>(Lio/olvid/messenger/activities/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 485
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f100089

    .line 486
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 487
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 488
    invoke-virtual {v2, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10002a

    .line 489
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity;->showNextDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 490
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 493
    new-instance v1, Lio/olvid/messenger/activities/MainActivity$10;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/MainActivity$10;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 512
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 450
    :cond_8
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 451
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10007f

    .line 452
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 453
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 454
    new-instance v4, Lio/olvid/messenger/activities/MainActivity$8;

    invoke-direct {v4, p0, v0}, Lio/olvid/messenger/activities/MainActivity$8;-><init>(Lio/olvid/messenger/activities/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 463
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10009d

    .line 464
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 465
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 466
    invoke-virtual {v2, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity;->showNextDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 467
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_2

    .line 428
    :cond_9
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 429
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10007a

    .line 430
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 431
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 432
    new-instance v4, Lio/olvid/messenger/activities/MainActivity$7;

    invoke-direct {v4, p0, v0}, Lio/olvid/messenger/activities/MainActivity$7;-><init>(Lio/olvid/messenger/activities/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 441
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f100097

    .line 442
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 443
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 444
    invoke-virtual {v2, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity;->showNextDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 445
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    :cond_a
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7727225e -> :sswitch_3
        -0x2e385ff4 -> :sswitch_2
        -0x13fbe021 -> :sswitch_1
        0x3dc44a5f -> :sswitch_0
    .end sparse-switch
.end method

.method private updateApiKey(Landroid/net/Uri;)V
    .locals 5

    .line 668
    sget-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const v0, 0x7f10020d

    const/4 v1, 0x0

    .line 670
    :try_start_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 671
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/ObvBase64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-class v4, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

    invoke-virtual {v2, p1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;

    .line 672
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-eqz p1, :cond_0

    .line 673
    iget-object v4, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 674
    invoke-direct {p0, v2, p1}, Lio/olvid/messenger/activities/MainActivity;->updateApiKey(Lio/olvid/messenger/databases/entity/OwnedIdentity;Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 682
    :goto_1
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 679
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    .line 682
    :goto_3
    invoke-static {v0, v1}, Lio/olvid/messenger/App;->toast(II)V

    .line 684
    throw p1
.end method

.method private updateApiKey(Lio/olvid/messenger/databases/entity/OwnedIdentity;Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;)V
    .locals 9

    .line 689
    :try_start_0
    iget-object v0, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v0}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f10003d

    const v3, 0x7f1000a7

    const v4, 0x7f1100e9

    if-nez v0, :cond_0

    .line 691
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 692
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f100070

    .line 693
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 694
    invoke-virtual {p2, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 702
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 703
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v4

    iget-object v5, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v4, v5}, Lio/olvid/engine/engine/Engine;->getApiKeyForOwnedIdentity([B)Ljava/util/UUID;

    move-result-object v4

    const v5, 0x7f100083

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 704
    iget-object v7, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x2

    iget-object v7, p2, Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;->apiKey:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lio/olvid/messenger/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 705
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lio/olvid/messenger/activities/MainActivity$13;

    invoke-direct {v5, p0, p1, p2}, Lio/olvid/messenger/activities/MainActivity$13;-><init>(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/messenger/databases/entity/OwnedIdentity;Lio/olvid/messenger/activities/IdentityCreationActivity$ConfigurationPojo;)V

    .line 706
    invoke-virtual {v3, v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10002d

    .line 723
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 725
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    .line 726
    invoke-static {v4, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 728
    :cond_1
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 730
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :catch_0
    return-void
.end method


# virtual methods
.method public clickFab()V
    .locals 2

    .line 1012
    :try_start_0
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fabDelegates:Ljava/util/HashMap;

    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/activities/MainActivity$FabDelegate;

    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {v0}, Lio/olvid/messenger/activities/MainActivity$FabDelegate;->onFabClick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1017
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 1050
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 1053
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1055
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int p3, p3, v0

    new-array p3, p3, [I

    const/4 v2, 0x0

    .line 1056
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1058
    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1, p3}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    .line 1059
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p1, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 1061
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1062
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1063
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 1066
    invoke-virtual {v0, p3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 1067
    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1

    .line 1068
    sget-object p3, Lio/olvid/messenger/activities/ObvLinkActivity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1069
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1070
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lio/olvid/messenger/App;->processLink(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Error reading invitation QR code from image."

    .line 1074
    invoke-static {p1}, Lio/olvid/engine/Logger;->i(Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f10020c

    .line 1076
    invoke-static {p1, p2}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_0

    .line 1080
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 589
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 590
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fabSetterPageChangeListener:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 996
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09013a

    if-ne p1, v0, :cond_1

    .line 997
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->clickFab()V

    goto :goto_0

    .line 1000
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->contactAdditionBottomSheetDialogFragment:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "add_contact_bottom_sheet"

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f11000c

    .line 134
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->setTheme(I)V

    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f130003

    .line 137
    invoke-static {p0, v0, p1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 139
    invoke-static {p0}, Lio/olvid/messenger/JobSchedulerService;->startRecurring(Landroid/content/Context;)V

    .line 142
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/olvid/messenger/activities/MainActivity$1;

    invoke-direct {v1, p0}, Lio/olvid/messenger/activities/MainActivity$1;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    const v0, 0x7f0c0023

    .line 159
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->setContentView(I)V

    const v0, 0x7f0902b4

    .line 162
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 163
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 165
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 170
    :cond_2
    new-instance v0, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;-><init>(Lio/olvid/messenger/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->tabsPagerAdapter:Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    const v0, 0x7f09013a

    .line 172
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 173
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fabSetterPageChangeListener:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    const v0, 0x7f0902ce

    .line 176
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 177
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity;->tabsPagerAdapter:Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 178
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity;->fabSetterPageChangeListener:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 179
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 180
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const v0, 0x7f090290

    .line 182
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 183
    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 184
    :goto_0
    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity;->tabsPagerAdapter:Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    invoke-virtual {v1}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 185
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 187
    iget-object v2, p0, Lio/olvid/messenger/activities/MainActivity;->tabsPagerAdapter:Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;

    invoke-static {v2, p1}, Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;->access$100(Lio/olvid/messenger/activities/MainActivity$TabsPagerAdapter;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 191
    :cond_4
    new-instance p1, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity;->contactAdditionBottomSheetDialogFragment:Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;

    .line 194
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/MainActivity$3;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MainActivity$3;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    invoke-static {p1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MainActivity$2;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    .line 202
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 214
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MainActivity$5;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    invoke-static {p1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/MainActivity$4;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/MainActivity$4;-><init>(Lio/olvid/messenger/activities/MainActivity;)V

    .line 222
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 245
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/MainActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 793
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 794
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d000a

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09004a

    .line 795
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f1000d4

    .line 796
    invoke-virtual {p0, v2}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 797
    new-instance v2, Lio/olvid/messenger/activities/MainActivity$16;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/activities/MainActivity$16;-><init>(Lio/olvid/messenger/activities/MainActivity;Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 817
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0d0009

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 597
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 598
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/MainActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const-string v0, "android.intent.action.VIEW"

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 990
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 825
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lio/olvid/messenger/activities/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 826
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 830
    :sswitch_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 831
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->downloadMessages([B)V

    return v2

    .line 981
    :sswitch_2
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 983
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v2

    .line 973
    :cond_0
    :sswitch_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1100e9

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100086

    .line 974
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10006d

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "0.7.9"

    aput-object v5, v3, v4

    const/16 v4, 0x4d

    .line 975
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "7"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Lio/olvid/messenger/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10003d

    const/4 v3, 0x0

    .line 976
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 977
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f090030 -> :sswitch_3
        0x7f090038 -> :sswitch_2
        0x7f090040 -> :sswitch_1
        0x7f09004b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .line 574
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 575
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->invitationListFragment:Lio/olvid/messenger/fragments/InvitationListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 576
    invoke-virtual {v0, v1}, Lio/olvid/messenger/fragments/InvitationListFragment;->setInvitationsAreVisible(Z)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/16 v0, 0x13

    const v1, 0x7f1001ed

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ae

    if-eq p1, v0, :cond_0

    .line 1042
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1026
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v2

    if-nez p1, :cond_1

    .line 1027
    sget-object p1, Lio/olvid/messenger/activities/ObvLinkActivity;->CONFIGURATION_PATTERN:Ljava/util/regex/Pattern;

    const p2, 0x7f100204

    invoke-virtual {p0, p2}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/olvid/messenger/App;->openCameraScanActivity(Landroid/content/Context;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_1
    invoke-static {v1, v2}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_0

    .line 1034
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v2

    if-nez p1, :cond_3

    .line 1035
    sget-object p1, Lio/olvid/messenger/activities/ObvLinkActivity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    const p2, 0x7f100205

    invoke-virtual {p0, p2}, Lio/olvid/messenger/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/olvid/messenger/App;->openCameraScanActivity(Landroid/content/Context;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_3
    invoke-static {v1, v2}, Lio/olvid/messenger/App;->toast(II)V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 659
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "invitation_uri"

    .line 660
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/MainActivity;->processQRCodeData(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 564
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 565
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fabSetterPageChangeListener:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    iget-object v1, p0, Lio/olvid/messenger/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->onPageSelected(I)V

    .line 567
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lio/olvid/messenger/activities/MainActivity;->showDialogs()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 651
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 652
    iget-boolean v0, p0, Lio/olvid/messenger/activities/MainActivity;->invitationDialogShowing:Z

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->invitationUri:Landroid/net/Uri;

    const-string v1, "invitation_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public setForceFabHidden(Z)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity;->fabSetterPageChangeListener:Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;

    invoke-virtual {v0, p1}, Lio/olvid/messenger/activities/MainActivity$FabSetterPageChangeListener;->setForceFabHidden(Z)V

    return-void
.end method
