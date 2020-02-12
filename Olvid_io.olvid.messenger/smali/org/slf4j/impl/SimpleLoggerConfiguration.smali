.class public Lorg/slf4j/impl/SimpleLoggerConfiguration;
.super Ljava/lang/Object;
.source "SimpleLoggerConfiguration.java"


# static fields
.field private static final CACHE_OUTPUT_STREAM_DEFAULT:Z = false

.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "simplelogger.properties"

.field private static final DATE_TIME_FORMAT_STR_DEFAULT:Ljava/lang/String; = null

.field static DEFAULT_LOG_LEVEL_DEFAULT:I = 0x14

.field private static final LEVEL_IN_BRACKETS_DEFAULT:Z = false

.field private static LOG_FILE_DEFAULT:Ljava/lang/String; = "System.err"

.field private static final SHOW_DATE_TIME_DEFAULT:Z = false

.field static final SHOW_LOG_NAME_DEFAULT:Z = true

.field private static final SHOW_SHORT_LOG_NAME_DEFAULT:Z = false

.field private static final SHOW_THREAD_NAME_DEFAULT:Z = true

.field private static final WARN_LEVELS_STRING_DEFAULT:Ljava/lang/String; = "WARN"

.field private static dateTimeFormatStr:Ljava/lang/String;


# instance fields
.field private cacheOutputStream:Z

.field dateFormatter:Ljava/text/DateFormat;

.field defaultLogLevel:I

.field levelInBrackets:Z

.field private logFile:Ljava/lang/String;

.field outputChoice:Lorg/slf4j/impl/OutputChoice;

.field private final properties:Ljava/util/Properties;

.field showDateTime:Z

.field showLogName:Z

.field showShortLogName:Z

.field showThreadName:Z

.field warnLevelString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->DATE_TIME_FORMAT_STR_DEFAULT:Ljava/lang/String;

    sput-object v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateTimeFormatStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->DEFAULT_LOG_LEVEL_DEFAULT:I

    iput v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->defaultLogLevel:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showDateTime:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateFormatter:Ljava/text/DateFormat;

    const/4 v2, 0x1

    .line 46
    iput-boolean v2, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showThreadName:Z

    .line 49
    iput-boolean v2, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showLogName:Z

    .line 52
    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showShortLogName:Z

    .line 55
    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->levelInBrackets:Z

    .line 58
    sget-object v2, Lorg/slf4j/impl/SimpleLoggerConfiguration;->LOG_FILE_DEFAULT:Ljava/lang/String;

    iput-object v2, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->logFile:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->outputChoice:Lorg/slf4j/impl/OutputChoice;

    .line 62
    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->cacheOutputStream:Z

    const-string v0, "WARN"

    .line 65
    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->warnLevelString:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->properties:Ljava/util/Properties;

    return-void
.end method

.method private static computeOutputChoice(Ljava/lang/String;Z)Lorg/slf4j/impl/OutputChoice;
    .locals 2

    const-string v0, "System.err"

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 166
    new-instance p0, Lorg/slf4j/impl/OutputChoice;

    sget-object p1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-direct {p0, p1}, Lorg/slf4j/impl/OutputChoice;-><init>(Lorg/slf4j/impl/OutputChoice$OutputChoiceType;)V

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Lorg/slf4j/impl/OutputChoice;

    sget-object p1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-direct {p0, p1}, Lorg/slf4j/impl/OutputChoice;-><init>(Lorg/slf4j/impl/OutputChoice$OutputChoiceType;)V

    return-object p0

    :cond_1
    const-string v0, "System.out"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 171
    new-instance p0, Lorg/slf4j/impl/OutputChoice;

    sget-object p1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->CACHED_SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-direct {p0, p1}, Lorg/slf4j/impl/OutputChoice;-><init>(Lorg/slf4j/impl/OutputChoice$OutputChoiceType;)V

    return-object p0

    .line 173
    :cond_2
    new-instance p0, Lorg/slf4j/impl/OutputChoice;

    sget-object p1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_OUT:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-direct {p0, p1}, Lorg/slf4j/impl/OutputChoice;-><init>(Lorg/slf4j/impl/OutputChoice$OutputChoiceType;)V

    return-object p0

    .line 176
    :cond_3
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    new-instance p1, Lorg/slf4j/impl/OutputChoice;

    invoke-direct {p1, v0}, Lorg/slf4j/impl/OutputChoice;-><init>(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not open ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]. Defaulting to System.err"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    new-instance p0, Lorg/slf4j/impl/OutputChoice;

    sget-object p1, Lorg/slf4j/impl/OutputChoice$OutputChoiceType;->SYS_ERR:Lorg/slf4j/impl/OutputChoice$OutputChoiceType;

    invoke-direct {p0, p1}, Lorg/slf4j/impl/OutputChoice;-><init>(Lorg/slf4j/impl/OutputChoice$OutputChoiceType;)V

    return-object p0
.end method

.method private loadProperties()V
    .locals 2

    .line 100
    new-instance v0, Lorg/slf4j/impl/SimpleLoggerConfiguration$1;

    invoke-direct {v0, p0}, Lorg/slf4j/impl/SimpleLoggerConfiguration$1;-><init>(Lorg/slf4j/impl/SimpleLoggerConfiguration;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    :catch_1
    throw v1

    :catch_2
    :cond_0
    :goto_0
    return-void
.end method

.method static stringToLevel(Ljava/lang/String;)I
    .locals 2

    const-string v0, "trace"

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "debug"

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-string v0, "info"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "warn"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x1e

    return p0

    :cond_3
    const-string v0, "error"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x28

    return p0

    :cond_4
    const-string v0, "off"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x32

    return p0

    :cond_5
    return v1
.end method


# virtual methods
.method getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "true"

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    return p2
.end method

.method getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 138
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method init()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->loadProperties()V

    const-string v0, "org.slf4j.simpleLogger.defaultLogLevel"

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->stringToLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->defaultLogLevel:I

    :cond_0
    const/4 v0, 0x1

    const-string v1, "org.slf4j.simpleLogger.showLogName"

    .line 76
    invoke-virtual {p0, v1, v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showLogName:Z

    const/4 v1, 0x0

    const-string v2, "org.slf4j.simpleLogger.showShortLogName"

    .line 77
    invoke-virtual {p0, v2, v1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showShortLogName:Z

    const-string v2, "org.slf4j.simpleLogger.showDateTime"

    .line 78
    invoke-virtual {p0, v2, v1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showDateTime:Z

    const-string v2, "org.slf4j.simpleLogger.showThreadName"

    .line 79
    invoke-virtual {p0, v2, v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->showThreadName:Z

    .line 80
    sget-object v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->DATE_TIME_FORMAT_STR_DEFAULT:Ljava/lang/String;

    const-string v2, "org.slf4j.simpleLogger.dateTimeFormat"

    invoke-virtual {p0, v2, v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateTimeFormatStr:Ljava/lang/String;

    const-string v0, "org.slf4j.simpleLogger.levelInBrackets"

    .line 81
    invoke-virtual {p0, v0, v1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->levelInBrackets:Z

    const-string v0, "org.slf4j.simpleLogger.warnLevelString"

    const-string v2, "WARN"

    .line 82
    invoke-virtual {p0, v0, v2}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->warnLevelString:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->logFile:Ljava/lang/String;

    const-string v2, "org.slf4j.simpleLogger.logFile"

    invoke-virtual {p0, v2, v0}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->logFile:Ljava/lang/String;

    const-string v0, "org.slf4j.simpleLogger.cacheOutputStream"

    .line 86
    invoke-virtual {p0, v0, v1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->cacheOutputStream:Z

    .line 87
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->logFile:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->cacheOutputStream:Z

    invoke-static {v0, v1}, Lorg/slf4j/impl/SimpleLoggerConfiguration;->computeOutputChoice(Ljava/lang/String;Z)Lorg/slf4j/impl/OutputChoice;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->outputChoice:Lorg/slf4j/impl/OutputChoice;

    .line 89
    sget-object v0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateTimeFormatStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/slf4j/impl/SimpleLoggerConfiguration;->dateFormatter:Ljava/text/DateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Bad date format in simplelogger.properties; will output relative time"

    .line 93
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
