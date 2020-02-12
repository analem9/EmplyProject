.class Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;
.super Landroid/text/style/ClickableSpan;
.source "ContactDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;->trustOriginToCharSequence(Lio/olvid/engine/engine/types/ObvTrustOrigin;[B)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

.field final synthetic val$bytesOwnedIdentity:[B

.field final synthetic val$trustOrigin:Lio/olvid/engine/engine/types/ObvTrustOrigin;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;[BLio/olvid/engine/engine/types/ObvTrustOrigin;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask;

    iput-object p2, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;->val$bytesOwnedIdentity:[B

    iput-object p3, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;->val$trustOrigin:Lio/olvid/engine/engine/types/ObvTrustOrigin;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;->val$bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$DisplayTrustOriginsTask$5;->val$trustOrigin:Lio/olvid/engine/engine/types/ObvTrustOrigin;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/ObvTrustOrigin;->getMediatorOrGroupOwner()Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openContactDetailsActivity(Landroid/content/Context;[B[B)V

    return-void
.end method
