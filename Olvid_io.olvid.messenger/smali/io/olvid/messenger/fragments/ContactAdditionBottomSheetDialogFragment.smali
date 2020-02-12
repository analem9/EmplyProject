.class public Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "ContactAdditionBottomSheetDialogFragment.java"

# interfaces
.implements Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private hasCamera:Z

.field private moreButton:Landroid/widget/TextView;

.field private ownedUrlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

.field private qrCodeImageView:Landroid/widget/ImageView;

.field private scanQrCodeButton:Landroid/widget/TextView;

.field private sendInviteButton:Landroid/widget/TextView;

.field private showQrCodeButton:Landroid/widget/TextView;

.field private smallQrCodeBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 110
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    .line 129
    :sswitch_0
    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->ownedUrlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    if-nez p1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 133
    iget-object v1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 135
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 136
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v1, :cond_2

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/olvid/messenger/activities/LandscapeFullScreenQrCodeActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 142
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v3, 0x20000000

    .line 144
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    const-string v5, "qr_code_bitmap"

    .line 145
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "initial_position"

    .line 146
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    iget-object v3, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->ownedUrlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    .line 147
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getBytesIdentity()[B

    move-result-object v3

    const-string v4, "bytes_identity"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p1

    iget-object v3, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->ownedUrlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v3, v3, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    const-string v4, "display_name"

    .line 148
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->dismiss()V

    .line 151
    invoke-virtual {v0, v2, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    return-void

    .line 155
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 161
    :cond_4
    new-instance v1, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v4, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>([BLjava/lang/String;)V

    const v3, 0x7f10014b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 162
    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getUrlRepresentation()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p0, v3, v4}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f1001e6

    .line 163
    invoke-virtual {p0, v0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 116
    :sswitch_2
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->dismiss()V

    .line 117
    iget-boolean v1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->hasCamera:Z

    if-eqz v1, :cond_6

    const-string v1, "android.permission.CAMERA"

    .line 118
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x13

    invoke-static {v0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 121
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lio/olvid/messenger/activities/ObvLinkActivity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    const v1, 0x7f100205

    invoke-virtual {p0, v1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openCameraScanActivity(Landroid/content/Context;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const p1, 0x7f1001f2

    .line 124
    invoke-static {p1, v2}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_2

    .line 167
    :sswitch_3
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1102d8

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f0d001a

    .line 168
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    .line 169
    new-instance v1, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;

    invoke-direct {v1, p0, p1}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$2;-><init>(Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 206
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901e0 -> :sswitch_3
        0x7f09024d -> :sswitch_2
        0x7f090269 -> :sswitch_1
        0x7f09026f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 65
    new-instance v0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment$1;-><init>(Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c002c

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09024d

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->scanQrCodeButton:Landroid/widget/TextView;

    const p2, 0x7f0901e0

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->moreButton:Landroid/widget/TextView;

    const p2, 0x7f09026f

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->showQrCodeButton:Landroid/widget/TextView;

    const p2, 0x7f090269

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->sendInviteButton:Landroid/widget/TextView;

    const p2, 0x7f090239

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->qrCodeImageView:Landroid/widget/ImageView;

    .line 85
    iget-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->scanQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->showQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->sendInviteButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->moreButton:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-eqz p2, :cond_0

    .line 92
    new-instance p3, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v0, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object p2, p2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-direct {p3, v0, p2}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>([BLjava/lang/String;)V

    iput-object p3, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->ownedUrlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    .line 93
    iget-object p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->qrCodeImageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->ownedUrlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    invoke-static {p2, p3, p0}, Lio/olvid/messenger/App;->setQrCodeImage(Landroid/widget/ImageView;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p0}, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.camera"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->hasCamera:Z

    :cond_1
    return-object p1
.end method

.method public saveSmallQrCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lio/olvid/messenger/fragments/ContactAdditionBottomSheetDialogFragment;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
