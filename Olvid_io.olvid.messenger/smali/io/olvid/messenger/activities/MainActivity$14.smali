.class Lio/olvid/messenger/activities/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MainActivity;->processQRCodeData(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MainActivity;

.field final synthetic val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MainActivity;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lio/olvid/messenger/activities/MainActivity$14;->this$0:Lio/olvid/messenger/activities/MainActivity;

    iput-object p2, p0, Lio/olvid/messenger/activities/MainActivity$14;->val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 760
    :try_start_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/messenger/activities/MainActivity$14;->val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    invoke-virtual {p2}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->getBytesIdentity()[B

    move-result-object p2

    iget-object v0, p0, Lio/olvid/messenger/activities/MainActivity$14;->val$urlIdentity:Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    iget-object v0, v0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {p1, p2, v0, v1}, Lio/olvid/engine/engine/Engine;->startTrustEstablishmentProtocol([BLjava/lang/String;[B)V

    const/16 p1, 0xa

    .line 761
    invoke-static {p1}, Lio/olvid/messenger/AnonymousUsageService;->log(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 763
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/activities/MainActivity$14;->this$0:Lio/olvid/messenger/activities/MainActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/MainActivity;->access$700(Lio/olvid/messenger/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
