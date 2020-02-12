.class public Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;
.super Ljava/lang/Object;
.source "AnonymousUsageLogItem.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "api_key"

.field public static final EXTRA_COUNT:Ljava/lang/String; = "extra_count"

.field public static final PSEUDO:Ljava/lang/String; = "pseudo"

.field public static final TABLE_NAME:Ljava/lang/String; = "anonymous_usage_log"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field public apiKey:Ljava/lang/String;

.field public extraCount:Ljava/lang/Integer;

.field public id:J

.field public pseudo:Ljava/lang/String;

.field public timestamp:J

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/Integer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->pseudo:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->apiKey:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->timestamp:J

    .line 54
    iput p5, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->type:I

    .line 55
    iput-object p6, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->extraCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public encode()Lio/olvid/engine/encoder/Encoded;
    .locals 7

    .line 60
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->extraCount:Ljava/lang/Integer;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 61
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->pseudo:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->apiKey:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v4, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->timestamp:J

    .line 64
    invoke-static {v4, v5}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->type:I

    int-to-long v3, v1

    .line 65
    invoke-static {v3, v4}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 68
    iget-object v6, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->pseudo:Ljava/lang/String;

    .line 69
    invoke-static {v6}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, v0, v5

    iget-object v5, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->apiKey:Ljava/lang/String;

    .line 70
    invoke-static {v5}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    aput-object v5, v0, v4

    iget-wide v4, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->timestamp:J

    .line 71
    invoke-static {v4, v5}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v4

    aput-object v4, v0, v3

    iget v3, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->type:I

    int-to-long v3, v3

    .line 72
    invoke-static {v3, v4}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/AnonymousUsageLogItem;->extraCount:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    return-object v0
.end method
