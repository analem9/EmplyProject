.class public Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;
.super Ljava/lang/Object;
.source "Fyle.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/entity/Fyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonMetadata"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field sha256:[B

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->type:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->fileName:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->sha256:[B

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "file_name"
    .end annotation

    .line 175
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256()[B
    .locals 1

    .line 184
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->sha256:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "file_name"
    .end annotation

    .line 180
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setSha256([B)V
    .locals 0

    .line 188
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->sha256:[B

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Fyle$JsonMetadata;->type:Ljava/lang/String;

    return-void
.end method
