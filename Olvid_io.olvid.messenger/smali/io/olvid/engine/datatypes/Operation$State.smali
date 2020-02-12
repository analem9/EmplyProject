.class final enum Lio/olvid/engine/datatypes/Operation$State;
.super Ljava/lang/Enum;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/datatypes/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/olvid/engine/datatypes/Operation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/olvid/engine/datatypes/Operation$State;

.field public static final enum CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

.field public static final enum EXECUTING:Lio/olvid/engine/datatypes/Operation$State;

.field public static final enum FINISHED:Lio/olvid/engine/datatypes/Operation$State;

.field public static final enum NOT_QUEUED:Lio/olvid/engine/datatypes/Operation$State;

.field public static final enum PENDING:Lio/olvid/engine/datatypes/Operation$State;

.field public static final enum READY:Lio/olvid/engine/datatypes/Operation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lio/olvid/engine/datatypes/Operation$State;

    const/4 v1, 0x0

    const-string v2, "NOT_QUEUED"

    invoke-direct {v0, v2, v1}, Lio/olvid/engine/datatypes/Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->NOT_QUEUED:Lio/olvid/engine/datatypes/Operation$State;

    .line 26
    new-instance v0, Lio/olvid/engine/datatypes/Operation$State;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v0, v3, v2}, Lio/olvid/engine/datatypes/Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->PENDING:Lio/olvid/engine/datatypes/Operation$State;

    .line 27
    new-instance v0, Lio/olvid/engine/datatypes/Operation$State;

    const/4 v3, 0x2

    const-string v4, "READY"

    invoke-direct {v0, v4, v3}, Lio/olvid/engine/datatypes/Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->READY:Lio/olvid/engine/datatypes/Operation$State;

    .line 28
    new-instance v0, Lio/olvid/engine/datatypes/Operation$State;

    const/4 v4, 0x3

    const-string v5, "EXECUTING"

    invoke-direct {v0, v5, v4}, Lio/olvid/engine/datatypes/Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->EXECUTING:Lio/olvid/engine/datatypes/Operation$State;

    .line 29
    new-instance v0, Lio/olvid/engine/datatypes/Operation$State;

    const/4 v5, 0x4

    const-string v6, "FINISHED"

    invoke-direct {v0, v6, v5}, Lio/olvid/engine/datatypes/Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    .line 30
    new-instance v0, Lio/olvid/engine/datatypes/Operation$State;

    const/4 v6, 0x5

    const-string v7, "CANCELLED"

    invoke-direct {v0, v7, v6}, Lio/olvid/engine/datatypes/Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/olvid/engine/datatypes/Operation$State;

    .line 24
    sget-object v7, Lio/olvid/engine/datatypes/Operation$State;->NOT_QUEUED:Lio/olvid/engine/datatypes/Operation$State;

    aput-object v7, v0, v1

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->PENDING:Lio/olvid/engine/datatypes/Operation$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->READY:Lio/olvid/engine/datatypes/Operation$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->EXECUTING:Lio/olvid/engine/datatypes/Operation$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    aput-object v1, v0, v5

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

    aput-object v1, v0, v6

    sput-object v0, Lio/olvid/engine/datatypes/Operation$State;->$VALUES:[Lio/olvid/engine/datatypes/Operation$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/olvid/engine/datatypes/Operation$State;
    .locals 1

    .line 24
    const-class v0, Lio/olvid/engine/datatypes/Operation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/olvid/engine/datatypes/Operation$State;

    return-object p0
.end method

.method public static values()[Lio/olvid/engine/datatypes/Operation$State;
    .locals 1

    .line 24
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->$VALUES:[Lio/olvid/engine/datatypes/Operation$State;

    invoke-virtual {v0}, [Lio/olvid/engine/datatypes/Operation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/olvid/engine/datatypes/Operation$State;

    return-object v0
.end method
