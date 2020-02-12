.class Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplayTrustOriginsTask"
.end annotation


# instance fields
.field private final buttonWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final contact:Lio/olvid/messenger/databases/entity/Contact;

.field private final context:Landroid/content/Context;

.field private final textViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/Button;Lio/olvid/messenger/databases/entity/Contact;)V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 471
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->buttonWeakReference:Ljava/lang/ref/WeakReference;

    .line 472
    iput-object p3, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    .line 473
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;)Lio/olvid/messenger/databases/entity/Contact;
    .locals 0

    .line 463
    iget-object p0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    return-object p0
.end method

.method private trustOriginToCharSequence(Lio/olvid/engine/engine/types/ObvTrustOrigin;[B)Ljava/lang/CharSequence;
    .locals 12

    .line 527
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const v3, 0x7f1001cc

    const/4 v4, 0x0

    const-string v5, "%f %l (%p @ %c)"

    const/16 v6, 0x21

    const/4 v7, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v7, :cond_0

    .line 567
    iget-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    const v0, 0x7f100212

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getTimestamp()J

    move-result-wide v3

    invoke-static {p2, v3, v4}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 549
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    const v8, 0x7f100210

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getTimestamp()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getMediatorOrGroupOwner()Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getMediatorOrGroupOwner()Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v8

    invoke-virtual {v8, v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v4, :cond_2

    .line 551
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 552
    new-instance v3, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;

    invoke-direct {v3, p0, p2, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;[BLio/olvid/engine/engine/types/ObvTrustOrigin;)V

    .line 558
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result p1

    invoke-virtual {v4, v3, v2, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 560
    :cond_2
    new-instance v4, Landroid/text/SpannableString;

    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 561
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 562
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v4, p1, v2, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    new-array p1, v7, [Ljava/lang/CharSequence;

    aput-object v0, p1, v2

    aput-object v4, p1, v1

    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 531
    :cond_3
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    const v8, 0x7f100211

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getTimestamp()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getMediatorOrGroupOwner()Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getMediatorOrGroupOwner()Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v8

    invoke-virtual {v8, v5}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v4, :cond_5

    .line 533
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 534
    new-instance v3, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$4;

    invoke-direct {v3, p0, p2, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$4;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;[BLio/olvid/engine/engine/types/ObvTrustOrigin;)V

    .line 540
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result p1

    invoke-virtual {v4, v3, v2, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 542
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    iget-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 543
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 544
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v4, p1, v2, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_3
    new-array p1, v7, [Ljava/lang/CharSequence;

    aput-object v0, p1, v2

    aput-object v4, p1, v1

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 529
    :cond_6
    iget-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->context:Landroid/content/Context;

    const v0, 0x7f10020f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getTimestamp()J

    move-result-wide v3

    invoke-static {p2, v3, v4}, Lio/olvid/messenger/App;->getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 479
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/engine/Engine;->doesContactHaveAutoAcceptTrustLevel([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->buttonWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 482
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$1;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :catch_0
    :cond_0
    :try_start_1
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object v2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v2, v2, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-virtual {v0, v1, v2}, Lio/olvid/engine/engine/Engine;->getContactTrustOrigins([B[B)[Lio/olvid/engine/engine/types/ObvTrustOrigin;

    move-result-object v0

    .line 495
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 497
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    if-nez v5, :cond_1

    const-string v5, "\n"

    .line 499
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 502
    :cond_1
    iget-object v5, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->contact:Lio/olvid/messenger/databases/entity/Contact;

    iget-object v5, v5, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-direct {p0, v6, v5}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->trustOriginToCharSequence(Lio/olvid/engine/engine/types/ObvTrustOrigin;[B)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 506
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;

    invoke-direct {v3, p0, v0, v1}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$2;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 514
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->textViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 516
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$3;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$3;-><init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method
