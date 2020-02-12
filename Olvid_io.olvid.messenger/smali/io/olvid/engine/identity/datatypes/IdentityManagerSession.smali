.class public Lio/olvid/engine/identity/datatypes/IdentityManagerSession;
.super Ljava/lang/Object;
.source "IdentityManagerSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final ephemeralIdentityCreationDelegate:Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;

.field public final identityPhotosPath:Ljava/lang/String;

.field public final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field public final notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

.field public final session:Lio/olvid/engine/datatypes/Session;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/NotificationPostingDelegate;Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;Ljava/lang/String;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 19
    iput-object p2, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    .line 20
    iput-object p3, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->ephemeralIdentityCreationDelegate:Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;

    .line 21
    iput-object p4, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->identityPhotosPath:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->close()V

    return-void
.end method
