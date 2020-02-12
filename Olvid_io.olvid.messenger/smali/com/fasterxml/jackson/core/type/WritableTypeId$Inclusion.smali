.class public final enum Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;
.super Ljava/lang/Enum;
.source "WritableTypeId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/type/WritableTypeId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public static final enum METADATA_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public static final enum PARENT_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public static final enum PAYLOAD_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public static final enum WRAPPER_ARRAY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

.field public static final enum WRAPPER_OBJECT:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    const/4 v1, 0x0

    const-string v2, "WRAPPER_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    .line 48
    new-instance v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    const/4 v2, 0x1

    const-string v3, "WRAPPER_OBJECT"

    invoke-direct {v0, v3, v2}, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    const/4 v3, 0x2

    const-string v4, "METADATA_PROPERTY"

    invoke-direct {v0, v4, v3}, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->METADATA_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    .line 76
    new-instance v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    const/4 v4, 0x3

    const-string v5, "PAYLOAD_PROPERTY"

    invoke-direct {v0, v5, v4}, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PAYLOAD_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    .line 92
    new-instance v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    const/4 v5, 0x4

    const-string v6, "PARENT_PROPERTY"

    invoke-direct {v0, v6, v5}, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PARENT_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    .line 34
    sget-object v6, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    aput-object v6, v0, v1

    sget-object v1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->METADATA_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PAYLOAD_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PARENT_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->$VALUES:[Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;
    .locals 1

    .line 34
    const-class v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;
    .locals 1

    .line 34
    sget-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->$VALUES:[Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    return-object v0
.end method


# virtual methods
.method public requiresObjectContext()Z
    .locals 1

    .line 95
    sget-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->METADATA_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;->PAYLOAD_PROPERTY:Lcom/fasterxml/jackson/core/type/WritableTypeId$Inclusion;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
