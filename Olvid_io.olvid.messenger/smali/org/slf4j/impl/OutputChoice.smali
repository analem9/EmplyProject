.class Lorg/slf4j/impl/OutputChoice;
.super Ljava/lang/Object;
.source "OutputChoice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/impl/OutputChoice$OutputChoiceType;
    }
.end annotation


# instance fields
.field final outputChoiceType:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

.field final targetPrintStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->FILE:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    iput-object v0, p0, Lorg/slf4j/impl/OutputChoice;->outputChoiceType:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    .line 36
    iput-object p1, p0, Lorg/slf4j/impl/OutputChoice;->targetPrintStream:Ljava/io/PrintStream;

    return-void
.end method

.method constructor <init>(Lorg/slf4j/impl/OutputChoice$OutputChoiceType;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->FILE:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    if-eq p1, v0, :cond_2

    .line 24
    iput-object p1, p0, Lorg/slf4j/impl/OutputChoice;->outputChoiceType:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    .line 25
    sget-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    if-ne p1, v0, :cond_0

    .line 26
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object p1, p0, Lorg/slf4j/impl/OutputChoice;->targetPrintStream:Ljava/io/PrintStream;

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    if-ne p1, v0, :cond_1

    .line 28
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object p1, p0, Lorg/slf4j/impl/OutputChoice;->targetPrintStream:Ljava/io/PrintStream;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lorg/slf4j/impl/OutputChoice;->targetPrintStream:Ljava/io/PrintStream;

    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method getTargetPrintStream()Ljava/io/PrintStream;
    .locals 2

    .line 40
    sget-object v0, Lorg/slf4j/impl/OutputChoice$1;->$SwitchMap$org$slf4j$impl$OutputChoice$OutputChoiceType:[I

    iget-object v1, p0, Lorg/slf4j/impl/OutputChoice;->outputChoiceType:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-virtual {v1}, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/slf4j/impl/OutputChoice;->targetPrintStream:Ljava/io/PrintStream;

    return-object v0

    .line 44
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0

    .line 42
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0
.end method
