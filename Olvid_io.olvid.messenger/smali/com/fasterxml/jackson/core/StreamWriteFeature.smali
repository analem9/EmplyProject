.class public final enum Lcom/fasterxml/jackson/core/StreamWriteFeature;
.super Ljava/lang/Enum;
.source "StreamWriteFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum AUTO_CLOSE_CONTENT:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/StreamWriteFeature;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/StreamWriteFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v2, 0x0

    const-string v3, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v3, v2, v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 43
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v3, 0x1

    const-string v4, "AUTO_CLOSE_CONTENT"

    invoke-direct {v0, v4, v3, v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->AUTO_CLOSE_CONTENT:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v4, 0x2

    const-string v5, "FLUSH_PASSED_TO_STREAM"

    invoke-direct {v0, v5, v4, v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 72
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v5, 0x3

    const-string v6, "WRITE_BIGDECIMAL_AS_PLAIN"

    invoke-direct {v0, v6, v5, v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v6, 0x4

    const-string v7, "STRICT_DUPLICATE_DETECTION"

    invoke-direct {v0, v7, v6, v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 109
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v7, 0x5

    const-string v8, "IGNORE_UNKNOWN"

    invoke-direct {v0, v8, v7, v1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;-><init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fasterxml/jackson/core/StreamWriteFeature;

    .line 13
    sget-object v1, Lcom/fasterxml/jackson/core/StreamWriteFeature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/core/StreamWriteFeature;->AUTO_CLOSE_CONTENT:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/StreamWriteFeature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/StreamWriteFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/StreamWriteFeature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/StreamWriteFeature;->IGNORE_UNKNOWN:Lcom/fasterxml/jackson/core/StreamWriteFeature;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-object p3, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 128
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mask:I

    .line 129
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->enabledByDefault()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_defaultState:Z

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 139
    invoke-static {}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->values()[Lcom/fasterxml/jackson/core/StreamWriteFeature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 140
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .locals 1

    .line 13
    const-class v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .locals 1

    .line 13
    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/StreamWriteFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/StreamWriteFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 148
    iget v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMask()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mask:I

    return v0
.end method

.method public mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/fasterxml/jackson/core/StreamWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method
