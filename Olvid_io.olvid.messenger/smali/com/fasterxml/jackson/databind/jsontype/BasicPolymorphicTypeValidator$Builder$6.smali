.class Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$6;
.super Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;
.source "BasicPolymorphicTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;->allowIfSubType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;

.field final synthetic val$prefixForSubType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$6;->this$0:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$6;->val$prefixForSubType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$6;->val$prefixForSubType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
