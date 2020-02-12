.class Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;
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
    name = "ContactDeletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lio/olvid/engine/protocol/ProtocolManager;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
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

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x5f516bd8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "identity_manager_notification_contact_identity_deleted"

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

    goto :goto_5

    :cond_2
    :try_start_0
    const-string p1, "contact_identity"

    .line 227
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    const-string v0, "owned_identity"

    .line 228
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/engine/datatypes/Identity;

    .line 229
    iget-object v0, p0, Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    invoke-static {v0, p1, p2}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->getAllForContact(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    if-eqz v0, :cond_6

    .line 237
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 234
    :cond_3
    :try_start_3
    array-length v2, p1

    :goto_3
    if-ge v1, v2, :cond_4

    aget-object v3, p1, v1

    .line 235
    iget-object v4, p0, Lio/olvid/engine/protocol/ProtocolManager$ContactDeletedListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    iget-object v5, v0, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3}, Lio/olvid/engine/protocol/databases/ChannelCreationProtocolInstance;->getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    invoke-virtual {v4, v5, v3, p2}, Lio/olvid/engine/protocol/ProtocolManager;->abortProtocol(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 229
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_5

    .line 237
    :try_start_5
    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method
