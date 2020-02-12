.class public abstract Lio/olvid/engine/datatypes/PriorityOperation;
.super Lio/olvid/engine/datatypes/Operation;
.source "PriorityOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/olvid/engine/datatypes/Operation;",
        "Ljava/lang/Comparable<",
        "Lio/olvid/engine/datatypes/PriorityOperation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lio/olvid/engine/datatypes/PriorityOperation;)I
    .locals 5

    .line 12
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/PriorityOperation;->getPriority()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lio/olvid/engine/datatypes/PriorityOperation;

    invoke-virtual {p0, p1}, Lio/olvid/engine/datatypes/PriorityOperation;->compareTo(Lio/olvid/engine/datatypes/PriorityOperation;)I

    move-result p1

    return p1
.end method

.method public abstract getPriority()J
.end method
