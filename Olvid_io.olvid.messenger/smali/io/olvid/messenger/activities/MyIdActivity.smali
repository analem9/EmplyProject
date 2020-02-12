.class public Lio/olvid/messenger/activities/MyIdActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MyIdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;
    }
.end annotation


# instance fields
.field private discardButton:Landroid/widget/Button;

.field private identityObserver:Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

.field private latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

.field private latestDetailsCardView:Landroidx/cardview/widget/CardView;

.field private latestDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private latestDetailsTextViews:Landroid/widget/LinearLayout;

.field private myIdInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private myIdNameTextView:Landroid/widget/TextView;

.field private primary700:I

.field private publishButton:Landroid/widget/Button;

.field private publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

.field private publishedDetailsTextViews:Landroid/widget/LinearLayout;

.field private qrCodeImageView:Landroid/widget/ImageView;

.field private shareButton:Landroid/widget/Button;

.field private smallQrCodeBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/olvid/messenger/activities/MyIdActivity;)Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    return-object p0
.end method

.method static synthetic access$002(Lio/olvid/messenger/activities/MyIdActivity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 0

    .line 52
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    return-object p1
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/MyIdActivity;)Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/olvid/messenger/activities/MyIdActivity;->identityObserver:Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

    return-object p0
.end method

.method static synthetic access$202(Lio/olvid/messenger/activities/MyIdActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 52
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 4

    .line 307
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    iget v1, p0, Lio/olvid/messenger/activities/MyIdActivity;->primary700:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MyIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public displayDetails(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "%f %l (%p @ %c)"

    if-nez v1, :cond_0

    .line 195
    invoke-virtual/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->finish()V

    return-void

    .line 198
    :cond_0
    iget-object v3, v0, Lio/olvid/messenger/activities/MyIdActivity;->myIdInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v5, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-static {v5}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 199
    iget-object v3, v0, Lio/olvid/messenger/activities/MyIdActivity;->myIdNameTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v3

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {v3, v4}, Lio/olvid/engine/engine/Engine;->getOwnedIdentityPublishedAndLatestDetails([B)[Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 203
    array-length v4, v3

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 206
    :cond_1
    iget-object v4, v0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v4, 0x0

    .line 207
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v5, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    aget-object v8, v3, v4

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 211
    iget-object v8, v0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v9, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    aget-object v10, v3, v4

    invoke-virtual {v10}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v8, v0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v9, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v6}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 216
    :goto_0
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v8

    .line 217
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v10, 0x2

    .line 218
    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    iget-object v11, v0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 222
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v8

    .line 223
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v11, v0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    :cond_3
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v8

    const/4 v13, 0x1

    if-eqz v8, :cond_4

    .line 227
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 230
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 231
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v15

    .line 232
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 233
    new-instance v11, Landroid/text/SpannableString;

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v14, v12, v4

    aput-object v9, v12, v13

    const v9, 0x7f1000be

    invoke-virtual {v0, v9, v12}, Lio/olvid/messenger/activities/MyIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v14, 0x21

    invoke-virtual {v11, v9, v4, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 235
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v9, v0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v9, 0x41800000    # 16.0f

    goto :goto_1

    .line 241
    :cond_4
    array-length v8, v3

    if-ne v8, v10, :cond_c

    .line 242
    aget-object v8, v3, v13

    iput-object v8, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 243
    iget-object v8, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v8, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 244
    iget-object v8, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 245
    aget-object v8, v3, v13

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v8

    .line 246
    invoke-virtual {v8, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-virtual {v8, v2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    aget-object v11, v3, v13

    invoke-virtual {v11}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 249
    iget-object v11, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v12, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Lio/olvid/messenger/customClasses/InitialView;->setPhotoUrl([BLjava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_5
    iget-object v3, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    iget-object v11, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v9}, Lio/olvid/messenger/App;->getInitial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lio/olvid/messenger/customClasses/InitialView;->setInitial([BLjava/lang/String;)V

    .line 254
    :goto_2
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 255
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41800000    # 16.0f

    .line 256
    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 258
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 260
    :cond_6
    iget-object v6, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 263
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 264
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 266
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 268
    :cond_7
    iget-object v2, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    :cond_8
    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 275
    invoke-direct/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    .line 276
    invoke-virtual {v8}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_9

    goto :goto_3

    .line 280
    :cond_9
    new-instance v9, Landroid/text/SpannableString;

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v3, v11, v4

    aput-object v7, v11, v13

    const v12, 0x7f1000be

    invoke-virtual {v0, v12, v11}, Lio/olvid/messenger/activities/MyIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v9, v11, v4, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCustomFields()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 284
    :cond_a
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v6, v3, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 286
    :cond_b
    iget-object v3, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsTextViews:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 290
    :cond_c
    aget-object v2, v3, v4

    iput-object v2, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    .line 291
    iget-object v2, v0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsCardView:Landroidx/cardview/widget/CardView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 294
    :cond_d
    iget-object v2, v0, Lio/olvid/messenger/activities/MyIdActivity;->qrCodeImageView:Landroid/widget/ImageView;

    new-instance v3, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v4, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>([BLjava/lang/String;)V

    new-instance v1, Lio/olvid/messenger/activities/MyIdActivity$3;

    invoke-direct {v1, v0}, Lio/olvid/messenger/activities/MyIdActivity$3;-><init>(Lio/olvid/messenger/activities/MyIdActivity;)V

    invoke-static {v2, v3, v1}, Lio/olvid/messenger/App;->setQrCodeImage(Landroid/widget/ImageView;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 318
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MyIdActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 325
    :sswitch_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 328
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 329
    iget-object v1, p0, Lio/olvid/messenger/activities/MyIdActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 331
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 332
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 333
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v1, :cond_1

    .line 336
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/olvid/messenger/activities/LandscapeFullScreenQrCodeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/olvid/messenger/activities/FullScreenQrCodeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v2, 0x20000000

    .line 340
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/messenger/activities/MyIdActivity;->smallQrCodeBitmap:Landroid/graphics/Bitmap;

    const-string v4, "qr_code_bitmap"

    .line 341
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "initial_position"

    .line 342
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 343
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    const-string v3, "bytes_identity"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p1

    .line 344
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    const-string v3, "display_name"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v1}, Lio/olvid/messenger/activities/MyIdActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0, v0, v0}, Lio/olvid/messenger/activities/MyIdActivity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 350
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 351
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    new-instance v1, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v3, v3, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>([BLjava/lang/String;)V

    const v2, 0x7f10014b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 353
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v4, v4, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getUrlRepresentation()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lio/olvid/messenger/activities/MyIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f1001e6

    .line 354
    invoke-virtual {p0, v0}, Lio/olvid/messenger/activities/MyIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 358
    :sswitch_2
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->publishLatestIdentityDetails([B)V

    goto :goto_1

    .line 362
    :sswitch_3
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->discardLatestIdentityDetails([B)V

    .line 363
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->identityObserver:Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;->reload()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09008c -> :sswitch_3
        0x7f090097 -> :sswitch_2
        0x7f0901fc -> :sswitch_1
        0x7f090239 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 75
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MyIdActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f0901f7

    .line 82
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->myIdInitialView:Lio/olvid/messenger/customClasses/InitialView;

    const p1, 0x7f0901f9

    .line 83
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->myIdNameTextView:Landroid/widget/TextView;

    const p1, 0x7f090239

    .line 84
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->qrCodeImageView:Landroid/widget/ImageView;

    .line 85
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->qrCodeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901b0

    .line 87
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsCardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f0901b2

    .line 88
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsTextViews:Landroid/widget/LinearLayout;

    const p1, 0x7f0901b1

    .line 89
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 90
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->latestDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setIgnoreCache(Z)V

    const p1, 0x7f090237

    .line 91
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsTextViews:Landroid/widget/LinearLayout;

    const p1, 0x7f090236

    .line 92
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/customClasses/InitialView;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    .line 93
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->publishedDetailsInitialView:Lio/olvid/messenger/customClasses/InitialView;

    invoke-virtual {p1, v0}, Lio/olvid/messenger/customClasses/InitialView;->setIgnoreCache(Z)V

    const p1, 0x7f090097

    .line 95
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->publishButton:Landroid/widget/Button;

    .line 96
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->publishButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09008c

    .line 97
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->discardButton:Landroid/widget/Button;

    .line 98
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->discardButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0600ca

    .line 100
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->primary700:I

    const p1, 0x7f0901fc

    .line 102
    invoke-virtual {p0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->shareButton:Landroid/widget/Button;

    .line 103
    iget-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance p1, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

    invoke-direct {p1, p0}, Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;-><init>(Lio/olvid/messenger/activities/MyIdActivity;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity;->identityObserver:Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

    .line 106
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity;->identityObserver:Lio/olvid/messenger/activities/MyIdActivity$IdentityObserver;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Lio/olvid/messenger/activities/MyIdActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 16

    move-object/from16 v6, p0

    .line 117
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v7, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090049

    if-eq v0, v1, :cond_0

    .line 190
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 122
    :cond_0
    new-instance v8, Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1100e9

    invoke-direct {v8, v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0043

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f09018e

    .line 124
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f090190

    .line 125
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f09018d

    .line 126
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09018f

    .line 127
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09018c

    .line 128
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f090191

    .line 129
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/material/textfield/TextInputEditText;

    .line 131
    iget-object v0, v6, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, v6, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, v6, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v6, Lio/olvid/messenger/activities/MyIdActivity;->latestDetails:Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getPosition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v15, Lio/olvid/messenger/activities/MyIdActivity$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lio/olvid/messenger/activities/MyIdActivity$1;-><init>(Lio/olvid/messenger/activities/MyIdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 160
    invoke-virtual {v11, v15}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    invoke-virtual {v12, v15}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f100094

    .line 163
    invoke-virtual {v8, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    const v15, 0x7f10003d

    new-instance v5, Lio/olvid/messenger/activities/MyIdActivity$2;

    move-object v0, v5

    move-object v4, v13

    move-object v11, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lio/olvid/messenger/activities/MyIdActivity$2;-><init>(Lio/olvid/messenger/activities/MyIdActivity;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 165
    invoke-virtual {v10, v15, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10002d

    .line 183
    invoke-virtual {v0, v1, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v7

    .line 119
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/olvid/messenger/activities/MyIdActivity;->onBackPressed()V

    return v7
.end method
