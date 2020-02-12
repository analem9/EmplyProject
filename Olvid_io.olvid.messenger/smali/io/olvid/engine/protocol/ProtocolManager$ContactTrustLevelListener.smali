.class Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;
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
    name = "ContactTrustLevelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/engine/protocol/ProtocolManager;


# direct methods
.method constructor <init>(Lio/olvid/engine/protocol/ProtocolManager;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

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

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x14e92ac0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "identity_manager_notification_contact_trust_level_increased"

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

    goto :goto_4

    :cond_2
    :try_start_0
    const-string p1, "contact_identity"

    .line 253
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/Identity;

    const-string v0, "owned_identity"

    .line 254
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/datatypes/Identity;

    const-string v2, "trust_level"

    .line 255
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/olvid/engine/datatypes/TrustLevel;

    .line 256
    iget-object v2, p0, Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-virtual {v2}, Lio/olvid/engine/protocol/ProtocolManager;->getSession()Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :try_start_1
    invoke-static {v2, v0, p1, p2}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getAllWithTargetFulfilled(Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/TrustLevel;)[Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;

    move-result-object p1

    .line 258
    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_3

    aget-object v0, p1, v1

    .line 259
    invoke-virtual {v0}, Lio/olvid/engine/protocol/databases/WaitingForTrustLevelIncreaseProtocolInstance;->getGenericProtocolMessageToSendWhenTrustLevelIncreased()Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;

    move-result-object v0

    .line 260
    iget-object v3, v2, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->channelDelegate:Lio/olvid/engine/metamanager/ChannelDelegate;

    iget-object v4, v2, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/protocol/datatypes/GenericProtocolMessageToSend;->generateChannelProtocolMessageToSend()Lio/olvid/engine/datatypes/containers/ChannelProtocolMessageToSend;

    move-result-object v0

    iget-object v5, p0, Lio/olvid/engine/protocol/ProtocolManager$ContactTrustLevelListener;->this$0:Lio/olvid/engine/protocol/ProtocolManager;

    invoke-static {v5}, Lio/olvid/engine/protocol/ProtocolManager;->access$000(Lio/olvid/engine/protocol/ProtocolManager;)Lio/olvid/engine/crypto/PRNGService;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lio/olvid/engine/metamanager/ChannelDelegate;->post(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/containers/ChannelMessageToSend;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/UID;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 262
    :cond_3
    iget-object p1, v2, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Session;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 263
    :try_start_2
    invoke-virtual {v2}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 256
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v2, :cond_4

    .line 263
    :try_start_4
    invoke-virtual {v2}, Lio/olvid/engine/protocol/datatypes/ProtocolManagerSession;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    return-void
.end method
