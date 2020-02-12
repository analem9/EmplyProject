.class Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;
.super Ljava/lang/Object;
.source "JDBC4ResultSet.java"

# interfaces
.implements Ljava/sql/NClob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc4/JDBC4ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteClob"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field final synthetic this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;


# direct methods
.method protected constructor <init>(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p2, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    return-void
.end method

.method public getAsciiStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    iget-object v1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->access$000(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    iget-object v1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->access$100(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterStream(JJ)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 570
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    iget-object p2, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->access$100(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getSubString(JI)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    if-ltz p3, :cond_0

    long-to-int p2, p1

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p3, p2

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 581
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Length must be greater than or equal to 0"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Position must be greater than or equal to 1"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "no data"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 589
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public position(Ljava/lang/String;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 595
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public position(Ljava/sql/Clob;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 600
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public setAsciiStream(J)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 605
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCharacterStream(J)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 610
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    const/4 p1, 0x0

    return-object p1
.end method

.method public setString(JLjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 615
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    const/4 p1, -0x1

    return p1
.end method

.method public setString(JLjava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 620
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    const/4 p1, -0x1

    return p1
.end method

.method public truncate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 625
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unused()Ljava/sql/SQLException;

    return-void
.end method
