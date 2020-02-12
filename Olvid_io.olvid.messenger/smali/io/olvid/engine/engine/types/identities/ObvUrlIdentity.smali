.class public Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;
.super Ljava/lang/Object;
.source "ObvUrlIdentity.java"


# static fields
.field private static final INVITATION_PATTERN:Ljava/util/regex/Pattern;

.field public static final URL_CONFIGURATION_HOST:Ljava/lang/String; = "configuration.olvid.io"

.field public static final URL_INVITATION_HOST:Ljava/lang/String; = "invitation.olvid.io"

.field public static final URL_PROTOCOL:Ljava/lang/String; = "https"

.field public static final URL_PROTOCOL_OLVID:Ljava/lang/String; = "olvid"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final identity:Lio/olvid/engine/datatypes/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(https|olvid)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://invitation.olvid.io"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/[#]?([-_a-zA-Z0-9]+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 24
    iput-object p2, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-object p1, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 35
    iput-object p2, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static fromUrlRepresentation(Ljava/lang/String;)Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;
    .locals 3

    .line 51
    sget-object v0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->INVITATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    new-instance v0, Lio/olvid/engine/encoder/Encoded;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/olvid/engine/datatypes/ObvBase64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    const/4 v0, 0x0

    .line 55
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v0

    const/4 v2, 0x1

    .line 56
    aget-object p0, p0, v2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p0

    .line 57
    new-instance v2, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;

    invoke-direct {v2, v0, p0}, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBytesIdentity()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getUrlRepresentation()Ljava/lang/String;
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://invitation.olvid.io/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/olvid/engine/encoder/Encoded;

    iget-object v2, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 45
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;->displayName:Ljava/lang/String;

    .line 46
    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 43
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    .line 43
    invoke-static {v1}, Lio/olvid/engine/datatypes/ObvBase64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
