.class synthetic Lorg/slf4j/impl/OutputChoice$1;
.super Ljava/lang/Object;
.source "OutputChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slf4j/impl/OutputChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    invoke-static {}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->values()[Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    :try_start_0
    sget-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    sget-object v1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->FILE:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
