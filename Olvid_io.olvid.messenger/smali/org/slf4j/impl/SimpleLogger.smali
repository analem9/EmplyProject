.class public Lorg/slf4j/impl/SimpleLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "SimpleLogger.java"


# static fields
.field public static final CACHE_OUTPUT_STREAM_STRING_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.cacheOutputStream"

.field static CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration; = null

.field public static final DATE_TIME_FORMAT_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.dateTimeFormat"

.field public static final DEFAULT_LOG_LEVEL_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.defaultLogLevel"

.field private static INITIALIZED:Z = false

.field public static final LEVEL_IN_BRACKETS_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.levelInBrackets"

.field public static final LOG_FILE_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.logFile"

.field public static final LOG_KEY_PREFIX:Ljava/lang/String; = "org.slf4j.simpleLogger.log."

.field protected static final LOG_LEVEL_DEBUG:I = 0xa

.field protected static final LOG_LEVEL_ERROR:I = 0x28

.field protected static final LOG_LEVEL_INFO:I = 0x14

.field protected static final LOG_LEVEL_OFF:I = 0x32

.field protected static final LOG_LEVEL_TRACE:I = 0x0

.field protected static final LOG_LEVEL_WARN:I = 0x1e

.field public static final SHOW_DATE_TIME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showDateTime"

.field public static final SHOW_LOG_NAME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showLogName"

.field public static final SHOW_SHORT_LOG_NAME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showShortLogName"

.field public static final SHOW_THREAD_NAME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showThreadName"

.field private static START_TIME:J = 0x0L

.field public static final SYSTEM_PREFIX:Ljava/lang/String; = "org.slf4j.simpleLogger."

.field public static final WARN_LEVEL_STRING_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.warnLevelString"

.field private static final serialVersionUID:J = -0x8c81e24d6789094L


# instance fields
.field protected currentLogLevel:I

.field private transient shortLogName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/slf4j/impl/SimpleLogger;->START_TIME:J

    const/4 v0, 0x0

    .line 159
    sput-boolean v0, Lorg/slf4j/impl/SimpleLogger;->INITIALIZED:Z

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    const/16 v0, 0x14

    .line 178
    iput v0, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lorg/slf4j/impl/SimpleLogger;->recursivelyComputeLevelString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    invoke-static {p1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->stringToLevel(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    goto :goto_0

    .line 221
    :cond_0
    sget-object p1, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget p1, p1, Lorg/slf4j/impl/SimpleLoggerConfiguration;->defaultLogLevel:I

    iput p1, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    :goto_0
    return-void
.end method

.method private computeShortName()Ljava/lang/String;
    .locals 3

    .line 339
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 351
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    invoke-static {p2, p3, p4}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p2

    .line 355
    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private varargs formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 367
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-static {p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p2

    .line 371
    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getFormattedDate()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 332
    sget-object v1, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-object v1, v1, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateFormatter:Ljava/text/DateFormat;

    monitor-enter v1

    .line 333
    :try_start_0
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-object v2, v2, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 334
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static init()V
    .locals 1

    .line 173
    new-instance v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;

    invoke-direct {v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;-><init>()V

    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    .line 174
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    invoke-virtual {v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->init()V

    return-void
.end method

.method static lazyInit()V
    .locals 1

    .line 163
    sget-boolean v0, Lorg/slf4j/impl/SimpleLogger;->INITIALIZED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 166
    sput-boolean v0, Lorg/slf4j/impl/SimpleLogger;->INITIALIZED:Z

    .line 167
    invoke-static {}, Lorg/slf4j/impl/SimpleLogger;->init()V

    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 249
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-boolean v2, v2, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showDateTime:Z

    if-eqz v2, :cond_2

    .line 257
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-object v2, v2, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateFormatter:Ljava/text/DateFormat;

    if-eqz v2, :cond_1

    .line 258
    invoke-direct {p0}, Lorg/slf4j/impl/SimpleLogger;->getFormattedDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lorg/slf4j/impl/SimpleLogger;->START_TIME:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    :cond_2
    :goto_0
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-boolean v2, v2, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showThreadName:Z

    const/16 v3, 0x5b

    if-eqz v2, :cond_3

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_3
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-boolean v2, v2, Lorg/slf4j/impl/SimpleLoggerConfiguration;->levelInBrackets:Z

    if-eqz v2, :cond_4

    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_4
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->renderLevel(I)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    sget-object p1, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-boolean p1, p1, Lorg/slf4j/impl/SimpleLoggerConfiguration;->levelInBrackets:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x5d

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    sget-object p1, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-boolean p1, p1, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showShortLogName:Z

    const-string v1, " - "

    if-eqz p1, :cond_7

    .line 285
    iget-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 286
    invoke-direct {p0}, Lorg/slf4j/impl/SimpleLogger;->computeShortName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    .line 287
    :cond_6
    iget-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_7
    sget-object p1, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-boolean p1, p1, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showLogName:Z

    if-eqz p1, :cond_8

    .line 289
    iget-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_8
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0, v0, p3}, Lorg/slf4j/impl/SimpleLogger;->write(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 438
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 446
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xa

    .line 454
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0xa

    .line 467
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xa

    .line 462
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x28

    const/4 v1, 0x0

    .line 564
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x28

    const/4 v1, 0x0

    .line 572
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x28

    .line 580
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x28

    .line 593
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x28

    .line 588
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 480
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x14

    .line 496
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x14

    .line 509
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x14

    .line 504
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/16 v0, 0xa

    .line 430
    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/16 v0, 0x28

    .line 556
    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/16 v0, 0x14

    .line 472
    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .locals 1

    .line 383
    iget v0, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/16 v0, 0x1e

    .line 514
    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 4

    .line 597
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getLevel()Lorg/slf4j/event/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/event/Level;->toInt()I

    move-result v0

    .line 599
    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method recursivelyComputeLevelString()Ljava/lang/String;
    .locals 5

    .line 226
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_0

    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    const/4 v0, 0x0

    .line 230
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "org.slf4j.simpleLogger.log."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected renderLevel(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    const-string p1, "ERROR"

    return-object p1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized level ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    sget-object p1, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-object p1, p1, Lorg/slf4j/impl/SimpleLoggerConfiguration;->warnLevelString:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string p1, "INFO"

    return-object p1

    :cond_3
    const-string p1, "DEBUG"

    return-object p1

    :cond_4
    const-string p1, "TRACE"

    return-object p1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 396
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 404
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 522
    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 530
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x1e

    .line 538
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x1e

    .line 551
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x1e

    .line 546
    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method write(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 1

    .line 316
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->CONFIG_PARAMS:Lorg/slf4j/impl/SimpleLoggerConfiguration;

    iget-object v0, v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->outputChoice:Lorg/slf4j/impl/OutputChoice;

    invoke-virtual {v0}, Lorg/slf4j/impl/OutputChoice;->getTargetPrintStream()Ljava/io/PrintStream;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p2, v0}, Lorg/slf4j/impl/SimpleLogger;->writeThrowable(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method protected writeThrowable(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method
