.class Lorg/slf4j/impl/SimpleLoggerConfiguration$1;
.super Ljava/lang/Object;
.source "SimpleLoggerConfiguration.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slf4j/impl/SimpleLoggerConfiguration;->loadProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slf4j/impl/SimpleLoggerConfiguration;


# direct methods
.method constructor <init>(Lorg/slf4j/impl/SimpleLoggerConfiguration;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration$1;->this$0:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "simplelogger.properties"

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/slf4j/impl/SimpleLoggerConfiguration$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
