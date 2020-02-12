.class public interface abstract Lio/olvid/engine/metamanager/SolveChallengeDelegate;
.super Ljava/lang/Object;
.source "SolveChallengeDelegate.java"


# virtual methods
.method public abstract getApiKey(Lio/olvid/engine/datatypes/Identity;)Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract solveChallenge([BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
