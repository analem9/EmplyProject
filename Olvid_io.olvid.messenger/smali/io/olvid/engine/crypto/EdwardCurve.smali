.class public abstract Lio/olvid/engine/crypto/EdwardCurve;
.super Ljava/lang/Object;
.source "EdwardCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;
    }
.end annotation


# static fields
.field public static final CURVE_25519:Ljava/lang/String; = "Curve_25519"

.field public static final MDC:Ljava/lang/String; = "MDC"


# instance fields
.field public G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

.field public byteLength:I

.field public d:Ljava/math/BigInteger;

.field public nu:Ljava/math/BigInteger;

.field public p:Ljava/math/BigInteger;

.field public q:Ljava/math/BigInteger;

.field public tonelliNonQR:Ljava/math/BigInteger;

.field public tonelliS:I

.field public tonelliT:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    .line 14
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    .line 15
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->d:Ljava/math/BigInteger;

    .line 16
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->nu:Ljava/math/BigInteger;

    .line 17
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    .line 18
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliNonQR:Ljava/math/BigInteger;

    .line 19
    iput-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliT:Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliS:I

    .line 21
    iput v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->byteLength:I

    return-void
.end method

.method private modSqrt(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8

    .line 32
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x2

    .line 39
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 40
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v4, v3

    const/4 v3, 0x1

    .line 41
    :goto_0
    iget v5, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliS:I

    if-ge v3, v5, :cond_3

    .line 42
    iget-object v5, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliNonQR:Ljava/math/BigInteger;

    iget-object v6, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v5, v4, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v5, v6, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 43
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliNonQR:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliT:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->tonelliT:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generateRandomScalarAndPoint(Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;
    .locals 2

    .line 158
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->q:Ljava/math/BigInteger;

    invoke-interface {p1, v0}, Lio/olvid/engine/crypto/PRNGService;->bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 159
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object p1, p0, Lio/olvid/engine/crypto/EdwardCurve;->G:Lio/olvid/engine/datatypes/EdwardCurvePoint;

    invoke-virtual {p0, v0, p1}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMutliplicationWithX(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    .line 161
    new-instance v1, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;

    invoke-direct {v1, v0, p1}, Lio/olvid/engine/crypto/EdwardCurve$ScalarAndPoint;-><init>(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)V

    return-object v1
.end method

.method public mulAdd(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)[Lio/olvid/engine/datatypes/EdwardCurvePoint;
    .locals 1

    .line 139
    invoke-virtual {p0, p1, p2}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMutliplicationWithX(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    .line 140
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p4}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, p3, p4}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMutliplicationWithX(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p3

    .line 143
    invoke-virtual {p0, p1, p3}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p4}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lio/olvid/engine/crypto/EdwardCurve;->scalarMultiplication(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 146
    invoke-virtual {p0, p3}, Lio/olvid/engine/crypto/EdwardCurve;->xCoordinateFromY(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    .line 147
    invoke-static {p4, p3, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v0

    .line 148
    invoke-virtual {p0, p1, v0}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-static {p4, p3, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p3

    .line 150
    invoke-virtual {p0, p1, p3}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Lio/olvid/engine/datatypes/EdwardCurvePoint;

    .line 152
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/olvid/engine/datatypes/EdwardCurvePoint;

    return-object p1
.end method

.method public pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;
    .locals 5

    .line 103
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 106
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 108
    invoke-static {v1, p1, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiplication(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 12

    .line 51
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 54
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1

    :cond_2
    const-wide/16 v0, 0x2

    .line 61
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 63
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 64
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 65
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object v3, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 66
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 67
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 71
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object v7, p2

    move-object v6, v2

    :goto_0
    if-ltz v5, :cond_4

    .line 72
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 73
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    iget-object v10, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 74
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v10, v0, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 75
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v8, v0, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 76
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 77
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 78
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v6, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v4, v0, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 80
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v7, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 81
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v6, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v6, v3

    move-object v7, v4

    move-object v4, v8

    move-object v3, v10

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v6, v0, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 88
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 89
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v7, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 90
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 91
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v3

    move-object v3, v6

    move-object v7, v8

    move-object v6, v10

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 99
    :cond_4
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 52
    :cond_5
    :goto_2
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1
.end method

.method public scalarMutliplicationWithX(Ljava/math/BigInteger;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;
    .locals 3

    .line 113
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 116
    :cond_0
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object p2, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    return-object p1

    .line 120
    :cond_1
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {p1, p2, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    return-object p1

    .line 123
    :cond_2
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->getY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v0, p2, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p2

    .line 124
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {v0, v1, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 126
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {p0, v0, p2}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v0

    .line 128
    invoke-virtual {p0, p2, p2}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p2

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p0, v0, p2}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p2

    .line 131
    invoke-virtual {p0, v0, v0}, Lio/olvid/engine/crypto/EdwardCurve;->pointAddition(Lio/olvid/engine/datatypes/EdwardCurvePoint;Lio/olvid/engine/datatypes/EdwardCurvePoint;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 114
    :cond_5
    :goto_2
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {p1, p2, p0}, Lio/olvid/engine/datatypes/EdwardCurvePoint;->noCheckFactory(Ljava/math/BigInteger;Ljava/math/BigInteger;Lio/olvid/engine/crypto/EdwardCurve;)Lio/olvid/engine/datatypes/EdwardCurvePoint;

    move-result-object p1

    return-object p1
.end method

.method public xCoordinateFromY(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 25
    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 26
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/engine/crypto/EdwardCurve;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lio/olvid/engine/crypto/EdwardCurve;->modSqrt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
