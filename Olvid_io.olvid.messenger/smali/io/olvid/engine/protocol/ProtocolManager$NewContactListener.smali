.class Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;
.super Ljava/lang/Object;
.source "ProtocolManager.java"

# interfaces
.implements Lio/olvid/engine/datatypes/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/protocol/ProtocolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewContactListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lio/olvid/engine/protocol/ProtocolManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x20cd7895

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "identity_manager_notification_new_contact_device"

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
    :try_start_0
    const-string p1, "contact_device_uid"

    .line 209
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "contact_identity"

    .line 210
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v1, "owned_identity"

    .line 211
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/engine/datatypes/Identity;

    .line 212
    iget-object v1, p0, Lio/olvid/engine/protocol/ProtocolManager$NewContactListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v1, p1, v0, p2}, Lio/olvid/engine/protocol/ProtocolManager;->startChannelCreationWithContactDeviceProtocol(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
