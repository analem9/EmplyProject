.class public Lio/olvid/engine/engine/datatypes/EngineSession;
.super Ljava/lang/Object;
.source "EngineSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field public final session:Lio/olvid/engine/datatypes/Session;

.field public final userInterfaceDialogListener:Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    .line 16
    iput-object p2, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->userInterfaceDialogListener:Lio/olvid/engine/engine/datatypes/UserInterfaceDialogListener;

    .line 17
    iput-object p3, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

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

    .line 22
    iget-object v0, p0, Lio/olvid/engine/engine/datatypes/EngineSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->close()V

    return-void
.end method
