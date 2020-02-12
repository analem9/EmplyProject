.class public Lio/olvid/engine/datatypes/EdwardCurvePoint;
.super Ljava/lang/Object;
.source "EdwardCurvePoint.java"


# instance fields
.field X:Ljava/math/BigInteger;

.field Y:Ljava/math/BigInteger;

.field curve:Lio/olvid/engine/crypto/EdwardCurve;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/olvid/engine/crypto/exceptions/PointNotOnCurveException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->X:Ljava/math/BigInteger;

    .line 28
    iput-object p2, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->Y:Ljava/math/BigInteger;

    .line 29
    iput-object p3, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    .line 30
    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p3, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 31
    invoke-virtual {p2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p3, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p3, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v2, p3, Lio/olvid/engine/crypto/EdwardCurve;->d:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p3, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p1, Lio/olvid/engine/crypto/exceptions/PointNotOnCurveException;

    invoke-direct {p1}, Lio/olvid/engine/crypto/exceptions/PointNotOnCurveException;-><init>()V

    throw p1
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->X:Ljava/math/BigInteger;

    .line 39
    iput-object p2, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->Y:Ljava/math/BigInteger;

    .line 40
    iput-object p3, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    return-void
.end method

.method public static noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;
    .locals 2

    .line 45
    new-instance v0, Lio/olvid/engine/datatypes/EdwardCurvePoint;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 49
    instance-of v0, p1, Lio/olvid/engine/datatypes/EdwardCurvePoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lio/olvid/engine/datatypes/EdwardCurvePoint;

    .line 51
    iget-object v0, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->X:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->Y:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCurve()Lio/olvid/engine/crypto/EdwardCurve;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->curve:Lio/olvid/engine/crypto/EdwardCurve;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->X:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/olvid/engine/datatypes/EdwardCurvePoint;->Y:Ljava/math/BigInteger;

    return-object v0
.end method
