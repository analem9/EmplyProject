.class public Lorg/slf4j/impl/SimpleLoggerFactory;
.super Ljava/lang/Object;
.source "SimpleLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field loggerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    invoke-static {}, Lorg/slf4j/impl/SimpleLogger;->lazyInit()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    if-eqz v0, :cond_0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lorg/slf4j/impl/SimpleLogger;

    invoke-direct {v0, p1}, Lorg/slf4j/impl/SimpleLogger;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/slf4j/Logger;

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method

.method reset()V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method
