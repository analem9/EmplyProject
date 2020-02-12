.class public Lorg/sqlite/ExtendedCommand$RestoreCommand;
.super Ljava/lang/Object;
.source "ExtendedCommand.java"

# interfaces
.implements Lorg/sqlite/ExtendedCommand$SQLExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/ExtendedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreCommand"
.end annotation


# static fields
.field private static restoreCmd:Ljava/util/regex/Pattern;


# instance fields
.field public final srcFile:Ljava/lang/String;

.field public final targetDB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "restore(\\s+(\"[^\"]*\"|\'[^\']*\'|\\S+))?\\s+from\\s+(\"[^\"]*\"|\'[^\']*\'|\\S+)"

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sqlite/ExtendedCommand$RestoreCommand;->restoreCmd:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/sqlite/ExtendedCommand$RestoreCommand;->targetDB:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lorg/sqlite/ExtendedCommand$RestoreCommand;->srcFile:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/sqlite/ExtendedCommand$RestoreCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 136
    sget-object v0, Lorg/sqlite/ExtendedCommand$RestoreCommand;->restoreCmd:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    .line 138
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/sqlite/ExtendedCommand;->removeQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sqlite/ExtendedCommand;->removeQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string p0, "main"

    .line 142
    :cond_1
    new-instance v1, Lorg/sqlite/ExtendedCommand$RestoreCommand;

    invoke-direct {v1, p0, v0}, Lorg/sqlite/ExtendedCommand$RestoreCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 145
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Lorg/sqlite/core/DB;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/sqlite/ExtendedCommand$RestoreCommand;->targetDB:Ljava/lang/String;

    iget-object v1, p0, Lorg/sqlite/ExtendedCommand$RestoreCommand;->srcFile:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/sqlite/core/DB;->restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I

    return-void
.end method
