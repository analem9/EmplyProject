.class public Lio/olvid/messenger/databases/entity/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# static fields
.field public static final BYTES_CONTACT_IDENTITY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final CUSTOM_DISPLAY_NAME:Ljava/lang/String; = "custom_display_name"

.field public static final DEVICE_COUNT:Ljava/lang/String; = "device_count"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final ESTABLISHED_CHANNEL_COUNT:Ljava/lang/String; = "established_channel_count"

.field public static final IDENTITY_DETAILS:Ljava/lang/String; = "identity_details"

.field public static final NEW_PUBLISHED_DETAILS:Ljava/lang/String; = "new_published_details"

.field public static final PUBLISHED_DETAILS_NEW_SEEN:I = 0x2

.field public static final PUBLISHED_DETAILS_NEW_UNSEEN:I = 0x1

.field public static final PUBLISHED_DETAILS_NOTHING_NEW:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "contact_table"


# instance fields
.field public bytesContactIdentity:[B

.field public bytesOwnedIdentity:[B

.field public customDisplayName:Ljava/lang/String;

.field public deviceCount:I

.field public displayName:Ljava/lang/String;

.field public establishedChannelCount:I

.field public identityDetails:Ljava/lang/String;

.field public newPublishedDetails:I


# direct methods
.method public constructor <init>([B[BLio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    .line 80
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    const-string p1, "%f %l (%p @ %c)"

    .line 82
    invoke-virtual {p3, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    .line 83
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Contact;->identityDetails:Ljava/lang/String;

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    .line 85
    iput p1, p0, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    .line 86
    iput p1, p0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    return-void
.end method

.method public constructor <init>([B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    .line 102
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    .line 103
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lio/olvid/messenger/databases/entity/Contact;->identityDetails:Ljava/lang/String;

    .line 106
    iput p6, p0, Lio/olvid/messenger/databases/entity/Contact;->newPublishedDetails:I

    .line 107
    iput p7, p0, Lio/olvid/messenger/databases/entity/Contact;->deviceCount:I

    .line 108
    iput p8, p0, Lio/olvid/messenger/databases/entity/Contact;->establishedChannelCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    check-cast p1, Lio/olvid/messenger/databases/entity/Contact;

    .line 116
    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    iget-object v3, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    .line 117
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCustomDisplayName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Contact;->customDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Contact;->displayName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget-object v0, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesContactIdentity:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lio/olvid/messenger/databases/entity/Contact;->bytesOwnedIdentity:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
