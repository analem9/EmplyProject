.class Lio/olvid/engine/crypto/HashSHA256;
.super Ljava/lang/Object;
.source "Hash.java"

# interfaces
.implements Lio/olvid/engine/crypto/Hash;


# static fields
.field static final OUTPUT_LENGTH:I = 0x20


# instance fields
.field private h:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "SHA-256"

    .line 20
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/engine/crypto/HashSHA256;->h:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public digest([B)[B
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/crypto/HashSHA256;->h:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1
.end method

.method public outputLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method
