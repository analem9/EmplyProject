.class Lio/olvid/messenger/databases/entity/Invitation$8$1;
.super Landroid/text/style/ClickableSpan;
.source "Invitation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/databases/entity/Invitation$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/olvid/messenger/databases/entity/Invitation$8;

.field final synthetic val$bytesOwnedIdentity:[B

.field final synthetic val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/databases/entity/Invitation$8;[BLio/olvid/engine/engine/types/identities/ObvIdentity;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Invitation$8$1;->this$1:Lio/olvid/messenger/databases/entity/Invitation$8;

    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Invitation$8$1;->val$bytesOwnedIdentity:[B

    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Invitation$8$1;->val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Invitation$8$1;->val$bytesOwnedIdentity:[B

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Invitation$8$1;->val$contactIdentity:Lio/olvid/engine/engine/types/identities/ObvIdentity;

    invoke-virtual {v1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/olvid/messenger/App;->openContactDetailsActivity(Landroid/content/Context;[B[B)V

    return-void
.end method
