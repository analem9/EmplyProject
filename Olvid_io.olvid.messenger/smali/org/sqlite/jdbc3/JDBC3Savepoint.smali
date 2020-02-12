.class public Lorg/sqlite/jdbc3/JDBC3Savepoint;
.super Ljava/lang/Object;
.source "JDBC3Savepoint.java"

# interfaces
.implements Ljava/sql/Savepoint;


# instance fields
.field final id:I

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->name:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    .line 19
    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSavepointId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 23
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    return v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SQLITE_SAVEPOINT_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
