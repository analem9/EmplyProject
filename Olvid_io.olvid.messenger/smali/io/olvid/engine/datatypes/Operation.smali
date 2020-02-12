.class public abstract Lio/olvid/engine/datatypes/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/engine/datatypes/Operation$State;,
        Lio/olvid/engine/datatypes/Operation$OnCancelCallback;,
        Lio/olvid/engine/datatypes/Operation$OnFinishCallback;
    }
.end annotation


# static fields
.field public static final RFC_NULL:I = -0x1

.field private static globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final runningOperationUIDsByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lio/olvid/engine/datatypes/UID;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private cancelWasRequested:Z

.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/olvid/engine/datatypes/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

.field private final onCancelCallback:Lio/olvid/engine/datatypes/Operation$OnCancelCallback;

.field private final onFinishCallback:Lio/olvid/engine/datatypes/Operation$OnFinishCallback;

.field private reasonForCancel:Ljava/lang/Integer;

.field private state:Lio/olvid/engine/datatypes/Operation$State;

.field private timestampOfLastExecution:J

.field private final uid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/engine/datatypes/Operation;->runningOperationUIDsByClass:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, v0, v0}, Lio/olvid/engine/datatypes/Operation;-><init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Operation$OnFinishCallback;Lio/olvid/engine/datatypes/Operation$OnCancelCallback;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->NOT_QUEUED:Lio/olvid/engine/datatypes/Operation$State;

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->dependencies:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lio/olvid/engine/datatypes/Operation;->timestampOfLastExecution:J

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/Operation;->cancelWasRequested:Z

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->reasonForCancel:Ljava/lang/Integer;

    .line 56
    iput-object p1, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    .line 57
    iput-object p2, p0, Lio/olvid/engine/datatypes/Operation;->onFinishCallback:Lio/olvid/engine/datatypes/Operation$OnFinishCallback;

    .line 58
    iput-object p3, p0, Lio/olvid/engine/datatypes/Operation;->onCancelCallback:Lio/olvid/engine/datatypes/Operation$OnCancelCallback;

    return-void
.end method

.method private isStateChangeAuthorized(Lio/olvid/engine/datatypes/Operation$State;)Z
    .locals 8

    .line 196
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    return v7

    .line 234
    :pswitch_0
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_0

    return v7

    :cond_0
    return v6

    .line 225
    :pswitch_1
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    return v7

    :cond_1
    return v6

    .line 216
    :pswitch_2
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    return v7

    :cond_2
    return v6

    .line 241
    :pswitch_3
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v5, :cond_3

    return v7

    :cond_3
    return v6

    .line 207
    :pswitch_4
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v4, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_4

    return v7

    :cond_4
    return v6

    .line 198
    :pswitch_5
    sget-object v0, Lio/olvid/engine/datatypes/Operation$1;->$SwitchMap$io$olvid$engine$datatypes$Operation$State:[I

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Operation$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v6, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v5, :cond_5

    return v7

    :cond_5
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDependency(Lio/olvid/engine/datatypes/Operation;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/Operation;

    .line 190
    invoke-virtual {v1, p1}, Lio/olvid/engine/datatypes/Operation;->addDependency(Lio/olvid/engine/datatypes/Operation;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areAllDependenciesFinished()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/Operation;

    .line 80
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Operation;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public areConditionsFulfilled()Z
    .locals 2

    .line 159
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 160
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->runningOperationUIDsByClass:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 166
    :goto_0
    sget-object v1, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public final cancel(Ljava/lang/Integer;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 124
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lio/olvid/engine/datatypes/Operation;->cancelWasRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lio/olvid/engine/datatypes/Operation;->cancelWasRequested:Z

    .line 126
    iput-object p1, p0, Lio/olvid/engine/datatypes/Operation;->reasonForCancel:Ljava/lang/Integer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel with RFC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " requested for Operation of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object p1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 130
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->doCancel()V

    return-void
.end method

.method public cancelWasRequested()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lio/olvid/engine/datatypes/Operation;->cancelWasRequested:Z

    return v0
.end method

.method public abstract doCancel()V
.end method

.method public abstract doExecute()V
.end method

.method public final execute()V
    .locals 3

    .line 171
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->runningOperationUIDsByClass:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    sget-object v1, Lio/olvid/engine/datatypes/Operation;->runningOperationUIDsByClass:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->setExecuting()V

    .line 182
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->doExecute()V

    return-void
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/olvid/engine/datatypes/Operation;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->dependencies:Ljava/util/List;

    return-object v0
.end method

.method public getReasonForCancel()Ljava/lang/Integer;
    .locals 1

    .line 333
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->reasonForCancel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimestampOfLastExecution()J
    .locals 2

    .line 318
    iget-wide v0, p0, Lio/olvid/engine/datatypes/Operation;->timestampOfLastExecution:J

    return-wide v0
.end method

.method public getUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public hasCancelledDependency()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/Operation;

    .line 71
    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Operation;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasNoReasonForCancel()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->reasonForCancel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public isExecuting()Z
    .locals 2

    .line 290
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 291
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->EXECUTING:Lio/olvid/engine/datatypes/Operation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 304
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public isPending()Z
    .locals 2

    .line 283
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 284
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->PENDING:Lio/olvid/engine/datatypes/Operation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 297
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 298
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->READY:Lio/olvid/engine/datatypes/Operation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method

.method public processCancel()V
    .locals 2

    .line 136
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/olvid/engine/datatypes/Operation;->cancelWasRequested:Z

    if-eqz v0, :cond_3

    .line 138
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->CANCELLED:Lio/olvid/engine/datatypes/Operation$State;

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    .line 139
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->onCancelCallback:Lio/olvid/engine/datatypes/Operation$OnCancelCallback;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0}, Lio/olvid/engine/datatypes/Operation$OnCancelCallback;->onCancelCallback(Lio/olvid/engine/datatypes/Operation;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_2

    .line 144
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->runningOperationUIDsByClass:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 147
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processed cancel of Operation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/olvid/engine/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void
.end method

.method public setExecuting()V
    .locals 1

    .line 268
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 269
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->EXECUTING:Lio/olvid/engine/datatypes/Operation$State;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/Operation;->isStateChangeAuthorized(Lio/olvid/engine/datatypes/Operation$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->EXECUTING:Lio/olvid/engine/datatypes/Operation$State;

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    .line 272
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setFinished()V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 102
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/Operation;->isStateChangeAuthorized(Lio/olvid/engine/datatypes/Operation$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->FINISHED:Lio/olvid/engine/datatypes/Operation$State;

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    .line 104
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->onFinishCallback:Lio/olvid/engine/datatypes/Operation$OnFinishCallback;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p0}, Lio/olvid/engine/datatypes/Operation$OnFinishCallback;->onFinishCallback(Lio/olvid/engine/datatypes/Operation;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->runningOperationUIDsByClass:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->uid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    sget-object v0, Lio/olvid/engine/datatypes/Operation;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPending()V
    .locals 1

    .line 252
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 253
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->PENDING:Lio/olvid/engine/datatypes/Operation$State;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/Operation;->isStateChangeAuthorized(Lio/olvid/engine/datatypes/Operation$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->PENDING:Lio/olvid/engine/datatypes/Operation$State;

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    .line 256
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setReady()V
    .locals 1

    .line 260
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 261
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->READY:Lio/olvid/engine/datatypes/Operation$State;

    invoke-direct {p0, v0}, Lio/olvid/engine/datatypes/Operation;->isStateChangeAuthorized(Lio/olvid/engine/datatypes/Operation$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lio/olvid/engine/datatypes/Operation$State;->READY:Lio/olvid/engine/datatypes/Operation$State;

    iput-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    .line 264
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public setTimestampOfLastExecution(J)V
    .locals 0

    .line 321
    iput-wide p1, p0, Lio/olvid/engine/datatypes/Operation;->timestampOfLastExecution:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateReadiness()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->hasCancelledDependency()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Operation;->cancel(Ljava/lang/Integer;)V

    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->areAllDependenciesFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Operation;->setReady()V

    :cond_2
    return-void
.end method

.method public wasQueued()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    iget-object v0, p0, Lio/olvid/engine/datatypes/Operation;->state:Lio/olvid/engine/datatypes/Operation$State;

    sget-object v1, Lio/olvid/engine/datatypes/Operation$State;->NOT_QUEUED:Lio/olvid/engine/datatypes/Operation$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object v1, p0, Lio/olvid/engine/datatypes/Operation;->lockOnState:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0
.end method
