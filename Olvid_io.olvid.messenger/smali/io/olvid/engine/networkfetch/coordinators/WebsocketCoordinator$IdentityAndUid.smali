.class Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;
.super Ljava/lang/Object;
.source "WebsocketCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator;
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

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 318
    iput-object p2, p0, Lio/olvid/engine/networkfetch/coordinators/WebsocketCoordinator$IdentityAndUid;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-void
.end method
