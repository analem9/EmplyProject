.class Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;
.super Ljava/lang/Object;
.source "JDBC3DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForeignKey"
.end annotation


# instance fields
.field private fkColNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fkName:Ljava/lang/String;

.field private fkTableName:Ljava/lang/String;

.field private match:Ljava/lang/String;

.field private onDelete:Ljava/lang/String;

.field private onUpdate:Ljava/lang/String;

.field private pkColNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pkTableName:Ljava/lang/String;

.field final synthetic this$1:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;


# direct methods
.method constructor <init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2183
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->this$1:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    .line 2178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    .line 2184
    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkName:Ljava/lang/String;

    .line 2185
    iput-object p3, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkTableName:Ljava/lang/String;

    .line 2186
    iput-object p4, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkTableName:Ljava/lang/String;

    .line 2187
    iput-object p5, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onUpdate:Ljava/lang/String;

    .line 2188
    iput-object p6, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onDelete:Ljava/lang/String;

    .line 2189
    iput-object p7, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->match:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addColumnMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2198
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2199
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColumnMapping(I)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2203
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method public getColumnMappingCount()I
    .locals 1

    .line 2207
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFkName()Ljava/lang/String;
    .locals 1

    .line 2194
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkName:Ljava/lang/String;

    return-object v0
.end method

.method public getFkTableName()Ljava/lang/String;
    .locals 1

    .line 2215
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    .line 2227
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->match:Ljava/lang/String;

    return-object v0
.end method

.method public getOnDelete()Ljava/lang/String;
    .locals 1

    .line 2223
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onDelete:Ljava/lang/String;

    return-object v0
.end method

.method public getOnUpdate()Ljava/lang/String;
    .locals 1

    .line 2219
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getPkTableName()Ljava/lang/String;
    .locals 1

    .line 2211
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkTableName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForeignKey [fkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkTableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fkTableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkColNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fkColNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
