.class public Lio/olvid/messenger/activities/ContactDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ContactDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lio/olvid/engine/engine/types/EngineNotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;
    }
.end annotation


# static fields
.field public static final CONTACT_BYTES_CONTACT_IDENTITY_INTENT_EXTRA:Ljava/lang/String; = "contact_bytes_identity"

.field public static final CONTACT_BYTES_OWNED_IDENTITY_INTENT_EXTRA:Ljava/lang/String; = "contact_bytes_owned_identity"


# instance fields
.field private acceptUpdateCardView:Landroidx/cardview/widget/CardView;

.field private animationsSet:Z

.field private contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

.field private contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

.field private contactInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private contactNameTextView:Landroid/widget/TextView;

.field private discussionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private exchangeDigitsButton:Landroid/widget/Button;

.field private groupEmptyView:Landroid/view/View;

.field private introduceButton:Landroid/widget/Button;

.field private mainConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private noChannelCardView:Landroidx/cardview/widget/CardView;

.field private noChannelSpinner:Landroid/widget/ImageView;

.field private primary700:I

.field private publishDetailsTitle:Landroid/widget/TextView;

.field private publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

.field private publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private publishedDetailsTextViews:Landroid/widget/LinearLayout;

.field private qrCodeImageView:Landroid/widget/ImageView;

.field private registrationNumber:J

.field private smallQrCodeBitmap:Landroid/graphics/Bitmap;

.field private trustOriginsListTextView:Landroid/widget/TextView;

.field private trustedDetailsCardView:Landroidx/cardview/widget/CardView;

.field private trustedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private trustedDetailsTextViews:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->animationsSet:Z

    return-void
.end method

.method static synthetic access$002(Lio/olvid/messenger/activities/ContactDetailsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 80
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 4

    .line 419
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 420
    iget v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->primary700:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 422
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "contact_bytes_identity"

    .line 573
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "contact_bytes_owned_identity"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 580
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 582
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 585
    :cond_1
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getGroupDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getGroupDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 588
    :cond_2
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v1, v0, p1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->setContactBytes([B[B)V

    .line 589
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lio/olvid/messenger/activities/ContactDetailsActivity$6;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/ContactDetailsActivity$6;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 596
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getGroupDiscussions()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setUnfilteredDiscussions(Landroidx/lifecycle/LiveData;)V

    return-void

    .line 574
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->finish()V

    const-string p1, "Missing contact identity in intent."

    .line 575
    invoke-static {p1}, Lio/olvid/engine/Logger;->w(Ljava/lang/String;)V

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

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x69100c3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "engine_notification_new_contact_photo"

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

    .line 432
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    const-string v0, "bytes_contact_identity"

    .line 433
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string v1, "is_trusted"

    .line 434
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 436
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/Contact;

    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    .line 437
    iget-object p2, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    .line 439
    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    .line 440
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 441
    new-instance p1, Lio/olvid/messenger/activities/ContactDetailsActivity$5;

    invoke-direct {p1, p0, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity$5;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public displayDetails(Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->finish()V

    return-void

    .line 229
    :cond_0
    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v2}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v4, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v2}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 233
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget v3, v0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->introduceButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->noChannelCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 238
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->noChannelSpinner:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->introduceButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->noChannelCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 242
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v3

    const v7, 0x7f080096

    invoke-static {v3, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 244
    new-instance v7, Lio/olvid/messenger/activities/ContactDetailsActivity$3;

    invoke-direct {v7, v1, v3}, Lio/olvid/messenger/activities/ContactDetailsActivity$3;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    invoke-virtual {v3, v7}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 255
    iget-object v7, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->noChannelSpinner:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    .line 260
    :cond_2
    :goto_0
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->qrCodeImageView:Landroid/widget/ImageView;

    new-instance v7, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v8, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-direct {v7, v8, v2}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>([BLjava/lang/String;)V

    new-instance v2, Lio/olvid/messenger/activities/ContactDetailsActivity$4;

    invoke-direct {v2, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity$4;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V

    invoke-static {v3, v7, v2}, Lio/olvid/messenger/App;->setQrCodeImage(Landroid/widget/ImageView;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;)V

    .line 268
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v2

    iget-object v3, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v7, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v2, v3, v7}, Lio/olvid/engine/engine/Engine;->getContactPublishedAndTrustedDetails([B[B)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 269
    array-length v3, v2

    if-nez v3, :cond_3

    goto/16 :goto_8

    .line 272
    :cond_3
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x21

    const v8, 0x7f1000be

    const/high16 v9, 0x41800000    # 16.0f

    const-string v10, "%f %l (%p @ %c)"

    const/4 v11, 0x2

    if-ne v3, v5, :cond_6

    .line 273
    :try_start_1
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 274
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 276
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishDetailsTitle:Landroid/widget/TextView;

    const v4, 0x7f100117

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishDetailsTitle:Landroid/widget/TextView;

    const v4, 0x7f08006a

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 280
    aget-object v3, v2, v6

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v3

    iput-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 281
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v3, v10}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4, v10}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    aget-object v10, v2, v6

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 284
    iget-object v10, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v12, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v12, v2}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_4
    iget-object v2, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v10, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v3}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 290
    :goto_1
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 291
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v2, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 296
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    :cond_5
    iget-object v2, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 304
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 306
    iget-object v9, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 307
    new-instance v10, Landroid/text/SpannableString;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v3, v12, v6

    aput-object v9, v12, v5

    invoke-virtual {v1, v8, v12}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 308
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v10, v9, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 309
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 314
    :cond_6
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishDetailsTitle:Landroid/widget/TextView;

    const v4, 0x7f100119

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishDetailsTitle:Landroid/widget/TextView;

    const v4, 0x7f08006b

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 318
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v6}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 320
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 321
    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 323
    aget-object v3, v2, v5

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v3

    .line 324
    invoke-virtual {v3, v10}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v3, v10}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    aget-object v13, v2, v5

    invoke-virtual {v13}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 327
    iget-object v13, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v14, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    aget-object v15, v2, v5

    invoke-virtual {v15}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_3

    .line 329
    :cond_7
    iget-object v13, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v14, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v4}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 333
    :goto_3
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v13

    .line 334
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v13, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 336
    iget-object v14, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 339
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v13

    .line 340
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v14, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    :cond_8
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 344
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 347
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 348
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v15

    .line 349
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_9

    :goto_5
    const/high16 v9, 0x41800000    # 16.0f

    goto :goto_4

    .line 353
    :cond_9
    new-instance v7, Landroid/text/SpannableString;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v14, v8, v6

    aput-object v9, v8, v5

    const v9, 0x7f1000be

    invoke-virtual {v1, v9, v8}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 354
    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v14, 0x21

    invoke-virtual {v7, v8, v6, v9, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 355
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v7, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v7, 0x21

    const v8, 0x7f1000be

    goto :goto_5

    .line 361
    :cond_a
    aget-object v7, v2, v6

    invoke-virtual {v7}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v7

    iput-object v7, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 362
    iget-object v7, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v7, v10}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 363
    iget-object v8, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v8, v10}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 364
    aget-object v9, v2, v6

    invoke-virtual {v9}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 365
    iget-object v9, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v10, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_6

    .line 367
    :cond_b
    iget-object v2, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v9, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v7}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 371
    :goto_6
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 373
    invoke-virtual {v2, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 374
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 375
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 377
    :cond_c
    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 380
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 381
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 383
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 385
    :cond_d
    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    :cond_e
    iget-object v2, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 388
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v4}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 391
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v7

    .line 393
    iget-object v8, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_f

    goto :goto_7

    .line 397
    :cond_f
    new-instance v9, Landroid/text/SpannableString;

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v4, v10, v6

    aput-object v8, v10, v5

    const v12, 0x7f1000be

    invoke-virtual {v1, v12, v10}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 398
    new-instance v10, Landroid/text/style/StyleSpan;

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v9, v10, v6, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 399
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 401
    :cond_10
    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v7, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 403
    :cond_11
    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 411
    :cond_12
    iget-boolean v2, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->animationsSet:Z

    if-nez v2, :cond_13

    .line 412
    iget-object v2, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->mainConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 413
    iput-boolean v5, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->animationsSet:Z

    .line 415
    :cond_13
    new-instance v2, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

    iget-object v3, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustOriginsListTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lio/olvid/messenger/activities/ContactDetailsActivity;->exchangeDigitsButton:Landroid/widget/Button;

    invoke-direct {v2, v3, v4, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;-><init>(Landroid/widget/TextView;Landroid/widget/Button;Lio/olvid/messenger/databases/entity/Contact;)V

    invoke-static {v2}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_14
    :goto_8
    return-void

    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public getEngineNotificationListenerRegistrationNumber()J
    .locals 2

    .line 460
    iget-wide v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->registrationNumber:J

    return-wide v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 708
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 602
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Contact;

    if-nez v0, :cond_1

    return-void

    .line 610
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x1

    const-string v2, "%f %l (%p @ %c)"

    const/4 v3, 0x0

    const v4, 0x7f10002d

    const v5, 0x7f10003d

    const v6, 0x7f1100e9

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 636
    :sswitch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    return-void

    .line 639
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 640
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 642
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 643
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 644
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v1, :cond_3

    .line 647
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/olvid/messenger/activities/LandscapeFullScreenQrCodeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 649
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v3, 0x20000000

    .line 651
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    const-string v5, "qr_code_bitmap"

    .line 652
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "initial_position"

    .line 653
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    const-string v3, "bytes_identity"

    .line 654
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 655
    invoke-virtual {v0, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 657
    invoke-virtual {p0, v7, v7}, Lio/olvid/messenger/activities/ContactDetailsActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 686
    :sswitch_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f100079

    new-array v1, v1, [Ljava/lang/Object;

    .line 687
    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v7

    invoke-virtual {p0, v2, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100096

    .line 688
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/olvid/messenger/activities/ContactDetailsActivity$8;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity$8;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V

    .line 689
    invoke-virtual {v1, v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 701
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 625
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 626
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    new-instance v1, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v3, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v3, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getUrlRepresentation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v1, "android.intent.extra.TEXT"

    .line 631
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f1001e7

    .line 632
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 661
    :sswitch_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1000a4

    .line 662
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f100082

    .line 663
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lio/olvid/messenger/activities/ContactDetailsActivity$7;

    invoke-direct {v1, p0, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity$7;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V

    .line 664
    invoke-virtual {p1, v5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 676
    invoke-virtual {p1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 677
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_1

    .line 612
    :sswitch_4
    iget p1, v0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    if-lez p1, :cond_5

    .line 613
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v0}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->newInstance([B[BLjava/lang/String;)Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;

    move-result-object p1

    .line 614
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lio/olvid/messenger/fragments/dialog/ContactIntroductionDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const p1, 0x7f1001f6

    .line 616
    invoke-static {p1, v1}, Lio/olvid/messenger/App;->toast(II)V

    goto :goto_1

    .line 621
    :sswitch_5
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {p0, p1, v0}, Lio/olvid/messenger/App;->openOneToOneDiscussionActivity(Landroid/content/Context;[B[B)V

    goto :goto_1

    .line 681
    :sswitch_6
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v2, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {p1, v1, v2}, Lio/olvid/engine/engine/Engine;->trustPublishedContactDetails([B[B)V

    .line 682
    iget-object p1, v0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {p1}, Lio/olvid/messenger/customClasses/InitialView;->invalidateCache([B)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090099 -> :sswitch_6
        0x7f0900d8 -> :sswitch_5
        0x7f0900dd -> :sswitch_4
        0x7f0900e2 -> :sswitch_3
        0x7f0900e6 -> :sswitch_2
        0x7f0900e7 -> :sswitch_1
        0x7f090239 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    const p1, 0x7f0c001d

    .line 122
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->setContentView(I)V

    .line 124
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f0900d6

    .line 129
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->mainConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0900d8

    .line 131
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->discussionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 132
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->discussionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900df

    .line 134
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->noChannelCardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0900e2

    .line 135
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 136
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e3

    .line 137
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->noChannelSpinner:Landroid/widget/ImageView;

    const p1, 0x7f0900d5

    .line 139
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactInitialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f0900de

    .line 140
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactNameTextView:Landroid/widget/TextView;

    const p1, 0x7f0900d1

    .line 145
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->acceptUpdateCardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090099

    .line 146
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 147
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090238

    .line 150
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishDetailsTitle:Landroid/widget/TextView;

    const p1, 0x7f090237

    .line 151
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    const p1, 0x7f090236

    .line 152
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 153
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setIgnoreCache(Z)V

    const p1, 0x7f0900dd

    .line 154
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->introduceButton:Landroid/widget/Button;

    const p1, 0x7f0900e6

    .line 155
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f090239

    .line 156
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->qrCodeImageView:Landroid/widget/ImageView;

    .line 158
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->introduceButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->introduceButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const p1, 0x7f0902c0

    .line 164
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsCardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0902c2

    .line 165
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsTextViews:Landroid/widget/LinearLayout;

    const p1, 0x7f0902c1

    .line 166
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 167
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setIgnoreCache(Z)V

    const p1, 0x7f0900d9

    .line 172
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->groupEmptyView:Landroid/view/View;

    .line 174
    new-instance p1, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-direct {p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    .line 175
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-virtual {p1}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->removeBottomPadding()V

    .line 176
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->groupEmptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setEmptyView(Landroid/view/View;)V

    .line 177
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    new-instance v0, Lio/olvid/messenger/activities/ContactDetailsActivity$1;

    invoke-direct {v0, p0}, Lio/olvid/messenger/activities/ContactDetailsActivity$1;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V

    invoke-virtual {p1, v0}, Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;->setOnClickDelegate(Lio/olvid/messenger/fragments/FilteredDiscussionListFragment$FilteredDiscussionListOnClickDelegate;)V

    .line 184
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0900db

    .line 185
    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactGroupDiscussionsFragment:Lio/olvid/messenger/fragments/FilteredDiscussionListFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 186
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const p1, 0x7f0900e9

    .line 189
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustOriginsListTextView:Landroid/widget/TextView;

    .line 190
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->trustOriginsListTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f0900e7

    .line 192
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->exchangeDigitsButton:Landroid/widget/Button;

    .line 193
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->exchangeDigitsButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600ca

    .line 195
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->primary700:I

    .line 197
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    const-string v0, "engine_notification_new_contact_photo"

    invoke-virtual {p1, v0, p0}, Lio/olvid/engine/engine/Engine;->addNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    .line 198
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 219
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 203
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 204
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    const-string v1, "engine_notification_new_contact_photo"

    invoke-virtual {v0, v1, p0}, Lio/olvid/engine/engine/Engine;->removeNotificationListener(Ljava/lang/String;Lio/olvid/engine/engine/types/EngineNotificationListener;)V

    .line 205
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {v0}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/Contact;

    .line 206
    new-instance v1, Lio/olvid/messenger/activities/ContactDetailsActivity$2;

    invoke-direct {v1, p0, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity$2;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V

    invoke-static {v1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 713
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f10002d

    const v2, 0x7f10003d

    const v3, 0x7f1100e9

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 799
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 718
    :sswitch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-nez p1, :cond_0

    return v5

    .line 721
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Contact;

    if-nez p1, :cond_1

    return v5

    .line 726
    :cond_1
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f0c0044

    invoke-virtual {v0, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f09012f

    .line 727
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 728
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Contact;->getCustomDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 729
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v7, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1000a1

    .line 730
    invoke-virtual {v7, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 731
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lio/olvid/messenger/activities/ContactDetailsActivity$9;

    invoke-direct {v3, p0, v6, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity$9;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Contact;)V

    .line 732
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100042

    .line 743
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 746
    new-instance v1, Lio/olvid/messenger/activities/ContactDetailsActivity$10;

    invoke-direct {v1, p0, v6, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity$10;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lcom/google/android/material/textfield/TextInputEditText;Lio/olvid/messenger/databases/entity/Contact;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 762
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v5

    .line 766
    :sswitch_1
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Contact;

    if-eqz p1, :cond_2

    .line 768
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f10009f

    .line 769
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100081

    .line 770
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lio/olvid/messenger/activities/ContactDetailsActivity$11;

    invoke-direct {v3, p0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity$11;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;Lio/olvid/messenger/databases/entity/Contact;)V

    .line 771
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 781
    invoke-virtual {p1, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_2
    return v5

    .line 787
    :sswitch_2
    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->contactDetailsViewModel:Lio/olvid/messenger/viewModels/ContactDetailsViewModel;

    invoke-virtual {p1}, Lio/olvid/messenger/viewModels/ContactDetailsViewModel;->getContact()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/Contact;

    if-eqz p1, :cond_3

    .line 789
    new-instance v0, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;

    iget-object v1, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    new-instance v2, Lio/olvid/messenger/activities/ContactDetailsActivity$12;

    invoke-direct {v2, p0}, Lio/olvid/messenger/activities/ContactDetailsActivity$12;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V

    invoke-direct {v0, p0, v1, p1, v2}, Lio/olvid/messenger/databases/tasks/PromptToDeleteContactTask;-><init>(Landroid/content/Context;[B[BLjava/lang/Runnable;)V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    :cond_3
    return v5

    .line 715
    :sswitch_3
    invoke-virtual {p0}, Lio/olvid/messenger/activities/ContactDetailsActivity;->onBackPressed()V

    return v5

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f09003b -> :sswitch_2
        0x7f090048 -> :sswitch_1
        0x7f090049 -> :sswitch_0
    .end sparse-switch
.end method

.method public setEngineNotificationListenerRegistrationNumber(J)V
    .locals 0

    .line 455
    iput-wide p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity;->registrationNumber:J

    return-void
.end method
