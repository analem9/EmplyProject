.class Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;
.super Ljava/lang/Object;
.source "EdwardCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/crypto/EdwardCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScalarAndPoint"
.end annotation


# instance fields
.field private final point:Lio/olvid/engine/datatypes/EdwardCurvePoint;

.field private final scalar:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;->point:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    .line 178
    iput-object p1, p0, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;->scalar:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getPoint()Lio/olvid/engine/datatypes/EdwardCurvePoint;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;->point:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    return-object v0
.end method

.method public getScalar()Ljava/math/BigInteger;
    .locals 1

    .line 169
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;->scalar:Ljava/math/BigInteger;

    return-object v0
.end method
