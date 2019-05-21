.class public interface abstract Lcom/android/camera/fsm/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


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
.method public abstract getStateContext()Lcom/google/android/apps/camera/async/SafeCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract processEvent(Ljava/lang/Object;)V
.end method

.method public abstract setInitialState(Lcom/android/camera/fsm/State;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fsm/State",
            "<TC;>;)Z"
        }
    .end annotation
.end method
