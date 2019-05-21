.class public interface abstract Lcom/android/camera/fsm/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/apps/camera/async/SafeCloseable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getEventHandler(Ljava/lang/Class;)Lcom/android/camera/fsm/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/android/camera/fsm/EventHandler",
            "<TE;TC;>;"
        }
    .end annotation
.end method

.method public abstract getStateMachine()Lcom/android/camera/fsm/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/fsm/StateMachine",
            "<TC;>;"
        }
    .end annotation
.end method

.method public abstract onEnter()Lcom/android/camera/fsm/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/fsm/State",
            "<TC;>;"
        }
    .end annotation
.end method

.method public abstract onLeave()V
.end method
