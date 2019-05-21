.class public interface abstract Lcom/android/camera/stats/InstrumentationSessionList;
.super Ljava/lang/Object;
.source "InstrumentationSessionList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSession:",
        "Lcom/android/camera/stats/InstrumentationSession;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSession;"
        }
    .end annotation
.end method

.method public abstract getSessionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TTSession;>;"
        }
    .end annotation
.end method

.method public abstract hasSessions()Z
.end method
