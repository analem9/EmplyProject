.class public final enum Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
.super Ljava/lang/Enum;
.source "JsonWriteFeature.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/FormatFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
        ">;",
        "Lcom/fasterxml/jackson/core/FormatFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum WRITE_NAN_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 41
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v4, "WRITE_NAN_AS_STRINGS"

    invoke-direct {v0, v4, v2, v2, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->WRITE_NAN_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v4, 0x2

    const-string v5, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 72
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const/4 v5, 0x3

    const-string v6, "ESCAPE_NON_ASCII"

    invoke-direct {v0, v6, v5, v3, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 10
    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->WRITE_NAN_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_defaultState:Z

    .line 126
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mask:I

    .line 127
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 115
    invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->values()[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 116
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .locals 1

    .line 10
    const-class v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .locals 1

    .line 10
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 135
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mask:I

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

    .line 133
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mask:I

    return v0
.end method

.method public mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method
