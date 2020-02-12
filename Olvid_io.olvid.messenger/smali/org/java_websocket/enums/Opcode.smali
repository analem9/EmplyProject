.class public final enum Lorg/java_websocket/enums/Opcode;
.super Ljava/lang/Enum;
.source "Opcode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/java_websocket/enums/Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/java_websocket/enums/Opcode;

.field public static final enum BINARY:Lorg/java_websocket/enums/Opcode;

.field public static final enum CLOSING:Lorg/java_websocket/enums/Opcode;

.field public static final enum CONTINUOUS:Lorg/java_websocket/enums/Opcode;

.field public static final enum PING:Lorg/java_websocket/enums/Opcode;

.field public static final enum PONG:Lorg/java_websocket/enums/Opcode;

.field public static final enum TEXT:Lorg/java_websocket/enums/Opcode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lorg/java_websocket/enums/Opcode;

    const/4 v1, 0x0

    const-string v2, "CONTINUOUS"

    invoke-direct {v0, v2, v1}, Lorg/java_websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    new-instance v0, Lorg/java_websocket/enums/Opcode;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lorg/java_websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    new-instance v0, Lorg/java_websocket/enums/Opcode;

    const/4 v3, 0x2

    const-string v4, "BINARY"

    invoke-direct {v0, v4, v3}, Lorg/java_websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    new-instance v0, Lorg/java_websocket/enums/Opcode;

    const/4 v4, 0x3

    const-string v5, "PING"

    invoke-direct {v0, v5, v4}, Lorg/java_websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    new-instance v0, Lorg/java_websocket/enums/Opcode;

    const/4 v5, 0x4

    const-string v6, "PONG"

    invoke-direct {v0, v6, v5}, Lorg/java_websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    new-instance v0, Lorg/java_websocket/enums/Opcode;

    const/4 v6, 0x5

    const-string v7, "CLOSING"

    invoke-direct {v0, v7, v6}, Lorg/java_websocket/enums/Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/java_websocket/enums/Opcode;

    .line 6
    sget-object v7, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    aput-object v7, v0, v1

    sget-object v1, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    aput-object v1, v0, v6

    sput-object v0, Lorg/java_websocket/enums/Opcode;->$VALUES:[Lorg/java_websocket/enums/Opcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/java_websocket/enums/Opcode;
    .locals 1

    .line 6
    const-class v0, Lorg/java_websocket/enums/Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/java_websocket/enums/Opcode;

    return-object p0
.end method

.method public static values()[Lorg/java_websocket/enums/Opcode;
    .locals 1

    .line 6
    sget-object v0, Lorg/java_websocket/enums/Opcode;->$VALUES:[Lorg/java_websocket/enums/Opcode;

    invoke-virtual {v0}, [Lorg/java_websocket/enums/Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/java_websocket/enums/Opcode;

    return-object v0
.end method
