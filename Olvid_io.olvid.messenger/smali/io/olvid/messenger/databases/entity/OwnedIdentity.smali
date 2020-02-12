.class public Lio/olvid/messenger/databases/entity/OwnedIdentity;
.super Ljava/lang/Object;
.source "OwnedIdentity.java"


# static fields
.field public static final API_KEY_STATUS:Ljava/lang/String; = "api_key_status"

.field public static final API_KEY_STATUS_INVALID:I = 0x2

.field public static final API_KEY_STATUS_UNKNOWN:I = 0x0

.field public static final API_KEY_STATUS_VALID:I = 0x1

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "identity_table"

.field public static final UNPUBLISHED_DETAILS:Ljava/lang/String; = "unpublished_details"

.field public static final UNPUBLISHED_DETAILS_EXIST:I = 0x1

.field public static final UNPUBLISHED_DETAILS_NOTHING_NEW:I


# instance fields
.field public apiKeyStatus:I

.field public bytesOwnedIdentity:[B

.field public displayName:Ljava/lang/String;

.field public unpublishedDetails:I


# direct methods
.method public constructor <init>(Lio/olvid/engine/engine/types/identities/ObvIdentity;I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getBytesIdentity()[B

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    .line 59
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p1

    const-string v0, "%f %l (%p @ %c)"

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    .line 60
    iput p2, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;II)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    .line 50
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->displayName:Ljava/lang/String;

    .line 51
    iput p3, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->apiKeyStatus:I

    .line 52
    iput p4, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->unpublishedDetails:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    .line 68
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 73
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
