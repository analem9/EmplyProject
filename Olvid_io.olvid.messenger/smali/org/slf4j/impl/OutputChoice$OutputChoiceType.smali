.class final enum Lorg/slf4j/impl/OutputChoice$OutputChoiceType;
.super Ljava/lang/Enum;
.source "OutputChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slf4j/impl/OutputChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OutputChoiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/slf4j/impl/OutputChoice$OutputChoiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

.field public static final enum CACHED_SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

.field public static final enum CACHED_SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

.field public static final enum FILE:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

.field public static final enum SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

.field public static final enum SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    const/4 v1, 0x0

    const-string v2, "SYS_OUT"

    invoke-direct {v0, v2, v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    new-instance v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    const/4 v2, 0x1

    const-string v3, "CACHED_SYS_OUT"

    invoke-direct {v0, v3, v2}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    new-instance v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    const/4 v3, 0x2

    const-string v4, "SYS_ERR"

    invoke-direct {v0, v4, v3}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    new-instance v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    const/4 v4, 0x3

    const-string v5, "CACHED_SYS_ERR"

    invoke-direct {v0, v5, v4}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    new-instance v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    const/4 v5, 0x4

    const-string v6, "FILE"

    invoke-direct {v0, v6, v5}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->FILE:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    .line 13
    sget-object v6, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    aput-object v6, v0, v1

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->FILE:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->$VALUES:[Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/slf4j/impl/OutputChoice$OutputChoiceType;
    .locals 1

    .line 13
    const-class v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    return-object p0
.end method

.method public static values()[Lorg/slf4j/impl/OutputChoice$OutputChoiceType;
    .locals 1

    .line 13
    sget-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->$VALUES:[Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v0}, [Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    return-object v0
.end method
