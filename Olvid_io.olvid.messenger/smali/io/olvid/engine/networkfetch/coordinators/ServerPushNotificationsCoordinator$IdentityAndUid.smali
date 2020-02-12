.class Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;
.super Ljava/lang/Object;
.source "ServerPushNotificationsCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityAndUid"
.end annotation


# instance fields
.field public deviceUid:Lio/olvid/engine/datatypes/UID;

.field public identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/UID;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 323
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/ServerPushNotificationsCoordinator$IdentityAndUid;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method
