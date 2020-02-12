.class public Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;
.super Ljava/lang/Object;
.source "AnonymizerForOwnedIdentity.java"


# static fields
.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final PSEUDO:Ljava/lang/String; = "pseudo"

.field public static final TABLE_NAME:Ljava/lang/String; = "anonymizer_for_owned_identity"


# instance fields
.field public bytesOwnedIdentity:[B

.field public pseudo:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;->bytesOwnedIdentity:[B

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;->pseudo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;->bytesOwnedIdentity:[B

    .line 39
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/AnonymizerForOwnedIdentity;->pseudo:Ljava/lang/String;

    return-void
.end method
