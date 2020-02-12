.class public abstract Lio/olvid/engine/datatypes/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

.field private static final BASE_RESCHEDULING_TIME:J = 0xfaL

.field public static final BROADCAST_UID:Lio/olvid/engine/datatypes/UID;

.field public static final CURRENT_ENGINE_DB_SCHEMA_VERSION:I = 0xd

.field public static final DEFAULT_ATTACHMENT_CHUNK_LENGTH:I = 0x200000

.field public static final DEFAULT_NUMBER_OF_DIGITS_FOR_SAS:I = 0x4

.field public static final DEFAULT_POLLING_INTERVAL:J = 0x3e8L

.field public static final FULL_RATCHET_TIME_INTERVAL_VALIDITY:J = 0x5265c00L

.field public static final PROTOCOL_RECEIVED_MESSAGE_EXPIRATION_DELAY:J = 0x4d3f6400L

.field public static final PROVISIONED_KEY_MATERIAL_EXPIRATION_DELAY:J = 0xa4cb800L

.field public static final REPROVISIONING_THRESHOLD:I = 0x32

.field public static final RETURN_RECEIPT_NONCE_LENGTH:I = 0x10

.field public static final SERVER_API_VERSION:Ljava/lang/String; = "7"

.field public static final SERVER_SESSION_CHALLENGE_LENGTH:I = 0x20

.field public static final SERVER_SESSION_NONCE_LENGTH:I = 0x20

.field public static final SERVER_SESSION_TOKEN_LENGTH:I = 0x20

.field public static final THRESHOLD_NUMBER_OF_DECRYPTED_MESSAGES_SINCE_LAST_FULL_RATCHET_SENT_MESSAGE:I = 0xa

.field public static final THRESHOLD_NUMBER_OF_ENCRYPTED_MESSAGES_PER_FULL_RATCHET:I = 0x64

.field public static final THRESHOLD_TIME_INTERVAL_SINCE_LAST_FULL_RATCHET_SENT_MESSAGE:J = 0x6ddd00L

.field public static final USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lio/olvid/engine/datatypes/UID;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    sput-object v0, Lio/olvid/engine/datatypes/Constants;->BROADCAST_UID:Lio/olvid/engine/datatypes/UID;

    .line 37
    new-instance v0, Lio/olvid/engine/datatypes/TrustLevel;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    sput-object v0, Lio/olvid/engine/datatypes/Constants;->AUTO_ACCEPT_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    .line 38
    new-instance v0, Lio/olvid/engine/datatypes/TrustLevel;

    invoke-direct {v0, v1, v1}, Lio/olvid/engine/datatypes/TrustLevel;-><init>(II)V

    sput-object v0, Lio/olvid/engine/datatypes/Constants;->USER_CONFIRMATION_TRUST_LEVEL_THRESHOLD:Lio/olvid/engine/datatypes/TrustLevel;

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/olvid/engine/datatypes/Constants;->random:Ljava/util/Random;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeReschedulingDelay(I)J
    .locals 2

    const-wide/16 v0, 0xfa

    shl-long/2addr v0, p0

    long-to-float p0, v0

    .line 44
    sget-object v0, Lio/olvid/engine/datatypes/Constants;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    mul-float p0, p0, v0

    float-to-long v0, p0

    return-wide v0
.end method
