.class Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$5;
.super Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;
.source "BasicPolymorphicTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;->allowIfSubType(Ljava/util/regex/Pattern;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;

.field final synthetic val$patternForSubType:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$5;->this$0:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$5;->val$patternForSubType:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$NameMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$Builder$5;->val$patternForSubType:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
